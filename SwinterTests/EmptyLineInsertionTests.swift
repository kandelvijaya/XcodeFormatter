//
//  EmptyLineInsertionTests.swift
//  Swinter
//
//  Created by Vijaya Prakash Kandel on 9/20/16.
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import XCTest
@testable import Swinter

class LintLineTests: XCTestCase {
    
    let EMP = "\n"

    func testThat_SingleDeclaration_hasEmptyLineAboveAndBelow() {
        let input: NSMutableArray = ["class A {\n", "}\n"]
        let expected = [EMP, "class A {\n", EMP,"}\n",EMP]
        
        LintLine().ensureProperEmptyLines(in: input)
        
        let output = input.copy() as! [String]
        XCTAssertEqual(expected, output)
    }
    
    func testhThat_SingleDeclarationWithMultipleEmptyLines_HasOnlyOneLineBeforeAndAfter() {
        let input: NSMutableArray = [EMP,EMP,EMP,"class A {\n",EMP,EMP,EMP, "}\n",EMP,EMP,EMP]
        let expected = [EMP, "class A {\n", EMP,"}\n",EMP]
        
        LintLine().ensureProperEmptyLines(in: input)
        
        let output = input.copy() as! [String]
        XCTAssertEqual(expected, output)
    }
    
    func testThat_IncompleteCodeBlock_IsNotCorrectedAtAll() {
        let input: NSMutableArray = ["class A {\n", "let a: Int"]
        let expected = input.copy() as! [String]
        
        LintLine().ensureProperEmptyLines(in: input)
        
        let output = input.copy() as! [String]
        XCTAssertEqual(expected, output)
    }
    
    func testThat_CodeBlockCompleteOnSameLine_IsNotCorrectedAtAll() {
        let input: NSMutableArray = ["class A { } \n"]
        let expected = input.copy() as! [String]
        
        LintLine().ensureProperEmptyLines(in: input)
        let output = input.copy() as! [String]
        
        XCTAssertEqual(expected, output)
    }
    
    func testThat_ClassCodeBlock_IsCorrected() {
        let input: NSMutableArray = ["class A {\n", "}\n"]
        let expected = [EMP, "class A {\n", EMP ,"}\n",EMP]
        
        LintLine().ensureProperEmptyLines(in: input)
        
        let output = input.copy() as! [String]
        XCTAssertEqual(expected, output)
    }
    
    func testThat_StructCodeBlock_IsCorrected() {
        let input: NSMutableArray = ["struct A {\n", "}\n"]
        let expected = [EMP, "struct A {\n", EMP,"}\n", EMP]
        
        LintLine().ensureProperEmptyLines(in: input)
        
        let output = input.copy() as! [String]
        XCTAssertEqual(expected, output)
    }
    
    func testThat_ProtocolCodeBlock_IsCorrected() {
        let input: NSMutableArray = ["protocol A {\n", "func doThat()\n", "}\n"]
        let expected = [EMP, "protocol A {\n",EMP, "func doThat()\n" ,EMP,"}\n",EMP]
        
        LintLine().ensureProperEmptyLines(in: input)
        
        let output = input.copy() as! [String]
        XCTAssertEqual(expected, output)
    }
    
    func testThat_ExtensionCodeBlock_IsCorrected() {
        let input: NSMutableArray = ["extension A{\n", "func doThat(){}\n", "}\n"]
        let expected = [EMP, "extension A{\n",EMP, "func doThat(){}\n" ,EMP,"}\n",EMP]
        
        LintLine().ensureProperEmptyLines(in: input)
        
        let output = input.copy() as! [String]
        XCTAssertEqual(expected, output)
    }
    
    func testThat_EnumCodeBlock_IsCorrected() {
        let input: NSMutableArray = ["enum A{\n", "case .a, .b\n", "}\n"]
        let expected = [EMP, "enum A{\n", EMP, "case .a, .b\n" ,EMP,"}\n", EMP]
        
        LintLine().ensureProperEmptyLines(in: input)
        
        let output = input.copy() as! [String]
        XCTAssertEqual(expected, output)
    }
    
    //Failure Case
    
    func testThat_FucntionBlock_doesNotGetEmptyLines() {
        let input: NSMutableArray = ["func do() {\n","someMagic()" ,"}\n"]
        let expected = input.copy() as! [String]
        
        LintLine().ensureProperEmptyLines(in: input)
        
        let output = input.copy() as! [String]
        XCTAssertEqual(expected, output)
    }
    
    func testThat_IfBlock_doesNotGetEmptyLines() {
        let input: NSMutableArray = ["if do() {\n","someMagic()" ,"} else {\n", "then clause here \n", "}\n"]
        let expected = input.copy() as! [String]
        
        LintLine().ensureProperEmptyLines(in: input)
        
        let output = input.copy() as! [String]
        XCTAssertEqual(expected, output)
    }
    
    //Complex cases
    
    func testThat_MultipleTypesInSingleFile_AreCorrectedProperly() {
        let input: NSMutableArray = ["final class A {\n","    \n", "    let a: Int\n","}\n", "final class B {\n", "    let b: Int\n", "}\n", "protocol A { }\n"]
     
        //NOTE: Shall we put a empty Line at the end of the file if there is none explicitly like in the test case above that
        //      ends with a single liner protocol.
        let expected = [EMP,"final class A {\n","    \n", "    let a: Int\n", EMP,"}\n", EMP,"final class B {\n", EMP, "    let b: Int\n", EMP, "}\n", EMP, "protocol A { }\n"]
        
        LintLine().ensureProperEmptyLines(in: input)
        
        let output = input.copy() as! [String]
        XCTAssertEqual(expected, output)
    }
    
    func testThat_MultipleTypesWithMultipleMixedSpaces_WillBeCorrected() {
        let input: NSMutableArray = ["final class A {\n",EMP, EMP,"    \n", "    let a: Int\n", EMP, EMP,EMP,"}\n", EMP, EMP,EMP, "final class B {\n", "    let b: Int\n", "}\n",EMP, EMP,EMP,EMP, "protocol A { }\n"]
        
        //NOTE: Shall we preserve the indentation spaces. CTRL + I will bring back this magic.
        let expected = [EMP,"final class A {\n","\n", "    let a: Int\n", EMP,"}\n", EMP,"final class B {\n", EMP, "    let b: Int\n", EMP, "}\n", EMP, "protocol A { }\n"]
        
        LintLine().ensureProperEmptyLines(in: input)
        
        let output = input.copy() as! [String]
        XCTAssertEqual(expected, output)
    }

}
