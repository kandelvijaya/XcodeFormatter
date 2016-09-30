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
        let input = ["class A {\n", "}\n"]
        let expected = [EMP, "class A {\n", EMP,"}\n",EMP]
        assertThat(inputCode: input, produces: expected)
    }
    
    func testhThat_SingleDeclarationWithMultipleEmptyLines_HasOnlyOneLineBeforeAndAfter() {
        let input = [EMP,EMP,EMP,"class A {\n",EMP,EMP,EMP, "}\n",EMP,EMP,EMP]
        let expected = [EMP, "class A {\n", EMP,"}\n",EMP]
        assertThat(inputCode: input, produces: expected)
    }
    
    func testThat_IncompleteCodeBlock_IsNotCorrectedAtAll() {
        let input = ["class A {\n", "let a: Int"]
        let expected = input
        assertThat(inputCode: input, produces: expected)
    }
    
    func testThat_CodeBlockCompleteOnSameLine_IsNotCorrectedAtAll() {
        let input = ["class A { } \n"]
        let expected = input
        assertThat(inputCode: input, produces: expected)
    }
    
    func testThat_ClassCodeBlock_IsCorrected() {
        let input = ["class A {\n", "}\n"]
        let expected = [EMP, "class A {\n", EMP ,"}\n",EMP]
        assertThat(inputCode: input, produces: expected)
    }
    
    func testThat_StructCodeBlock_IsCorrected() {
        let input = ["struct A {\n", "}\n"]
        let expected = [EMP, "struct A {\n", EMP,"}\n", EMP]
        assertThat(inputCode: input, produces: expected)
    }
    
    func testThat_ProtocolCodeBlock_IsCorrected() {
        let input = ["protocol A {\n", "func doThat()\n", "}\n"]
        let expected = [EMP, "protocol A {\n",EMP, "func doThat()\n" ,EMP,"}\n",EMP]
        assertThat(inputCode: input, produces: expected)
    }
    
    func testThat_ExtensionCodeBlock_IsCorrected() {
        let input = ["extension A{\n", "func doThat(){}\n", "}\n"]
        let expected = [EMP, "extension A{\n",EMP, "func doThat(){}\n" ,EMP,"}\n",EMP]
        assertThat(inputCode: input, produces: expected)
    }
    
    func testThat_EnumCodeBlock_IsCorrected() {
        let input = ["enum A{\n", "case .a, .b\n", "}\n"]
        let expected = [EMP, "enum A{\n", EMP, "case .a, .b\n" ,EMP,"}\n", EMP]
        assertThat(inputCode: input, produces: expected)
    }
    
    //Failure Case
    
    func testThat_FucntionBlock_doesNotGetEmptyLinesInsideTheBlock() {
        let input = ["func do() {\n","someMagic()" ,"}\n"]
        let expected = [EMP,"func do() {\n","someMagic()" ,"}\n" ]
        assertThat(inputCode: input, produces: expected)
    }
    
    func testThat_IfBlock_doesNotGetEmptyLines() {
        let input = ["if do() {\n","someMagic()" ,"} else {\n", "then clause here \n", "}\n"]
        let expected = input
        assertThat(inputCode: input, produces: expected)
    }
    
    //Complex cases

    //NOTE: Shall we put a empty Line at the end of the file if there is none explicitly like in the test case above that
    //      ends with a single liner protocol.
    func testThat_MultipleTypesInSingleFile_AreCorrectedProperly() {
        let input = ["final class A {\n","    \n", "    let a: Int\n","}\n", "final class B {\n", "    let b: Int\n", "}\n", "protocol A { }\n"]

        let expected = [EMP,"final class A {\n","    \n", "    let a: Int\n", EMP,"}\n", EMP,"final class B {\n", EMP, "    let b: Int\n", EMP, "}\n", EMP, "protocol A { }\n"]

        assertThat(inputCode: input, produces: expected)
    }

    //NOTE: Shall we preserve the indentation spaces. CTRL + I will bring back this magic.
    func testThat_MultipleTypesWithMultipleMixedSpaces_WillBeCorrected() {
        let input = ["final class A {\n",EMP, EMP,"    \n", "    let a: Int\n", EMP, EMP,EMP,"}\n", EMP, EMP,EMP, "final class B {\n", "    let b: Int\n", "}\n",EMP, EMP,EMP,EMP, "protocol A { }\n"]

        let expected = [EMP,"final class A {\n","\n", "    let a: Int\n", EMP,"}\n", EMP,"final class B {\n", EMP, "    let b: Int\n", EMP, "}\n", EMP, "protocol A { }\n"]

        assertThat(inputCode: input, produces: expected)
    }

    func testThat_EmptyLineIsInsertedAboveFunctionWithoutEmptyLine() {
        let input = ["func dothis(){}\n"]
        let expected = [EMP, "func dothis(){}\n"]
        assertThat(inputCode: input, produces: expected)
    }

    func testThat_TwoFunctionsWithoutEmptyLineInBetween_AreSeparatedByOneEmptyLine() {
        let input = ["func do(){}\n", "func doThat(){}\n"]
        let expected = [EMP,"func do(){}\n",EMP, "func doThat(){}\n"]
        assertThat(inputCode: input, produces: expected)
    }
    
    func testThat_CommentAndClassDeclaration_AreNotSeparatedWhileInsertingEmptyLines() {
        let input = [EMP,"//this is comment \n", "class A { \n", EMP,"}\n", EMP]
        let expected = input
        assertThat(inputCode: input, produces: expected)
    }
    
    func testThat_CommentAndClassDeclaration_AreProperlyCorrected() {
        let input = ["//this is comment \n", "class A { \n", EMP,"}\n", EMP]
        let expected = [EMP] + input
        assertThat(inputCode: input, produces: expected)
    }
    
    func assertThat_CommentAndTypes_AreProperlyCorrected() {
        let input = [EMP, EMP, "//Comment\n", "struct A {\n", "something \n", "}\n", EMP]
        let expected = Array(input.dropFirst())
        assertThat(inputCode: input, produces: expected)
    }
    
    func assertThat_CommentAndTypesInComplexStructure_AreProperlyCorrected() {
        let input = ["let a: Int\n", "//Comment\n", "struct A {\n", "something \n", "}\n", EMP]
        let expected = ["let a: Int\n", EMP, "//Comment\n", "struct A {\n", "something \n", "}\n", EMP]
        assertThat(inputCode: input, produces: expected)
    }
    
    
    
    func testThat_DeclarationInsideStringQuotes_AreNotTouched() {
        let input = ["\" class A { \" \n", "\"}\" \n"]
        let expected = input
        assertThat(inputCode: input, produces: expected)
    }


    //MARK:- tester

    func assertThat(inputCode input: [String], produces expected: [String]) {
        let mutableInput = NSMutableArray(array: input)
        LintLine().ensureProperEmptyLines(in: mutableInput)

        let output = mutableInput.copy() as! [String]
        XCTAssertEqual(expected, output)
    }

}
