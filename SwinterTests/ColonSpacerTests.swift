//
//  SpacerTests.swift
//
//  Created by Vijaya Prakash Kandel on 9/15/16.
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import XCTest
@testable import Swinter

class ColonSpacerTests: XCTestCase {
    
    func testThat_ColonFollowedByNoSpace_isSpaceSeparated() {
        let input = "let a:String?"
        let expected = "let a: String?"
        assertThat(input: input, producesOutput: expected)
    }
    
    func testThat_ColonFollowedByMultipleSpace_isTrimmedToOneSpace() {
        let input = "let a:        String?"
        let expected = "let a: String?"
        assertThat(input: input, producesOutput: expected)
    }
    
    func testThat_ColonFollowedByMultipleSpace_isTrimmed() {
        let input = ["let a:   Int", "let b:              String?", "[String:  AnyObject]"]
        let expected = ["let a: Int", "let b: String?", "[String: AnyObject]"]
        assertThat(input: input, producesOutput: expected)
    }
    
    func testThat_ColonFollowedByOneSpace_isReturnedSame() {
        let input = ["let a: Int", "func do(a: Int, b: [String: AnyObject]) {"]
        let expected = input
        assertThat(input: input, producesOutput: expected)
    }
    
    func testThat_MultipleVoilationInSingleLine_areCorrected() {
        let input = "func do(a:Int, b:     Int) -> Int {"
        let expected = "func do(a: Int, b: Int) -> Int {"
        assertThat(input: input, producesOutput: expected)
    }
    
    func testThat_MultipleComplexVoilationInSinleLine_areCorrected() {
        let input = "func structFromJSON(json:   [String:AnyObject], struct:SomeStruct, completion:(Bool->Void)) {"
        let expected = "func structFromJSON(json: [String: AnyObject], struct: SomeStruct, completion: (Bool->Void)) {"
        assertThat(input: input, producesOutput: expected)
    }
    
    func testThat_ColonInMiddle_IsCorrected() {
        let input = "[String : Int]"
        let expected = "[String: Int]"
        assertThat(input: input, producesOutput: expected)
    }
    
    func testThat_MultipleColonInMiddle_AreCorrected() {
        let input = "[0 : Apple, 1   :Ball, 3:Cat, 4   :    Dog, 5:         Elephant]"
        let expected = "[0: Apple, 1: Ball, 3: Cat, 4: Dog, 5: Elephant]"
        assertThat(input: input, producesOutput: expected)
    }
    
    //MARK:- Quoted String 
    func testThat_ColonInsideStringBlock_IsNotCorrected() {
        let input = "let urlString = \"https://www.google.com\""
        let expected = input
        assertThat(input: input, producesOutput: expected)
    }
    
    
    //MARK:- Testers
    private func assertThat(input: [String], producesOutput expected: [String]) {
        for (input1, expected1) in zip(input, expected) {
            assertThat(input: input1, producesOutput: expected1)
        }
    }
    
    private func assertThat(input: String, producesOutput expected: String) {
        let output = LintSpace().correctColonSpace(line: input)
        XCTAssertEqual(expected, output)
    }
    
}
