//
//  CodeAnalyzerTests.swift
//  Swinter
//
//  Created by Vijaya Prakash Kandel on 9/20/16.
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import XCTest
@testable import Swinter

extension CodePosition: Equatable {
    
    static func ==(lhs: CodePosition, rhs: CodePosition) -> Bool {
        let conditions = [lhs.line == rhs.line, lhs.indicator == rhs.indicator, lhs.section == rhs.section, lhs.lineContent == rhs.lineContent]
        let satisfied = conditions.filter { $0 }
        return satisfied.count == conditions.count
    }
    
}

class CodeBlockAnalyzerTests: XCTestCase {

    func testThat_AnEmptyClass_IsCountedAsSingleCodeBlock() {
        let input = ["class A{\n", "}\n"]
        
        let opening = CodePosition(lineContent: "class A{\n", line: 0, section: 7, indicator: .opening)
        let closing = CodePosition(lineContent: "}\n", line: 1, section: 0, indicator: .closing)
        let expected = CodeBlock(startPosition: opening, endPosition: closing)
        
        guard let output = CodeBlockAnalyzer().codeBlocks(for: input).first else {
            XCTFail("Couldnt get codeblock from a empty class declaration")
            return
        }
        
        XCTAssertEqual(expected.start, output.start)
        XCTAssertEqual(expected.end, output.end)
        XCTAssertEqual(expected.type, output.type)
        
    }
    
    func testThat_IncompleteClassDeclaration_IsNotCountedAsCodeBlock() {
        let input = ["class A{\n", "private let x:Int"]
        
        let output = CodeBlockAnalyzer().codeBlocks(for: input)
        
        XCTAssert(output.count == 0)
    }

    func testThat_EmptyProtocolDefinedInOneLine_IsCountedAsCodeBlock() {
        let input = ["protocol Empty { }\n"]
        
        let opening = CodePosition(lineContent: "protocol Empty { }\n", line: 0, section: 15, indicator: .opening)
        let closing = CodePosition(lineContent: "protocol Empty { }\n", line: 0, section: 17, indicator: .closing)
        let expected = CodeBlock(startPosition: opening, endPosition: closing)
        
        guard let output = CodeBlockAnalyzer().codeBlocks(for: input).first else {
            XCTFail("Couldnt get codeblock from a empty class declaration")
            return
        }
        
        XCTAssertEqual(expected.start, output.start)
        XCTAssertEqual(expected.end, output.end)
        XCTAssertEqual(output.type, CodeBlockType.ProtocolKind)
    }
    
    func testThat_FunctionDeclaration_HasTypeOfFunctionKind() {
        let input = ["func do(){\n","}\n"]
        
        guard let output = CodeBlockAnalyzer().codeBlocks(for: input).first else {
            XCTFail("Something went wrong during code analyzation")
            return
        }
        
        XCTAssert(output.type == CodeBlockType.FunctionKind)
    }
    
    func testThat_IfElseBlock_HasTypeOfOther() {
        let input = ["if isThat(){\n","}else{\n", "}\n"]
        
        let outputs = CodeBlockAnalyzer().codeBlocks(for: input)
        
        outputs.forEach{
            XCTAssertNotNil($0.type)
            XCTAssertEqual($0.type!, CodeBlockType.OtherKind)
        }
        
    }
    
    func testThat_StructDeclaration_HasStructType() {
        let input = ["struct A {   }\n"]
        
        let output = CodeBlockAnalyzer().codeBlocks(for: input).first!
        
        XCTAssertNotNil(output.type)
        XCTAssertEqual(output.type!, CodeBlockType.StructKind)

    }
    
    func testThat_EnumDeclaration_HasEnumType() {
        let input = ["enum A { case .a;  }\n"]
        
        let output = CodeBlockAnalyzer().codeBlocks(for: input).first!
        
        XCTAssertNotNil(output.type)
        XCTAssertEqual(output.type!, CodeBlockType.EnumKind)

    }
    
    func testThat_ExtensionHas_ExtensionType() {
        let input = ["extension A: AnyObject {   }\n"]
        
        let output = CodeBlockAnalyzer().codeBlocks(for: input).first!
        
        XCTAssertNotNil(output.type)
        XCTAssertEqual(output.type!, CodeBlockType.ExtensionKind)

    }
    
    //Complex tests with inner blocks
    
    func testThat_InnerClass_IsAlsoIdentifiedAsCodeBlock() {
        let input = ["class A{ class B{} }\n"]
        
        let output = CodeBlockAnalyzer().codeBlocks(for: input)
        
        XCTAssert(output.count == 2)
        
        output.forEach {
            XCTAssertEqual($0.type!, CodeBlockType.ClassKind)
        }
    }
    
    //Nested codeblocks are identified from inside out. 
    //Innermost will be identified and inserted first than the outermost. 
    func testThat_NestedEnumInsideAStruct_IsIdentified() {
        let input = ["struct A {\n", "enum Type{\n", "case .a, .b\n", "}\n", "}\n", "\n"]
        
        let output = CodeBlockAnalyzer().codeBlocks(for: input)
        
        let enumCodeBlock = output[0]
        let structCodeBlock = output[1]
        
        XCTAssert(structCodeBlock.type! == CodeBlockType.StructKind)
        XCTAssert(enumCodeBlock.type! == CodeBlockType.EnumKind)
        
    }

    func testThat_ProtocolConformingToClass_IsIdentified() {
        let input = ["protocol A: class {\n", " }\n"]
        let output = CodeBlockAnalyzer().codeBlocks(for: input)

        XCTAssert(output[0].type! == CodeBlockType.ProtocolKind)
    }
    
}
