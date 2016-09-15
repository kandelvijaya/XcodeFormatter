//
//  SpacerTests.swift
//
//  Created by Vijaya Prakash Kandel on 9/15/16.
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import XCTest
@testable import Swinter

class SpacerTests: XCTestCase {
    
    func testThat_ColonFollowedByNoSpace_IsReplaced() {
        let testInputLine = "let a:String?"
        let expectedOutput = "let a: String?"
        
        let output = LintSpace().ensureOneSpaceAfterColon(line: testInputLine)
        
        XCTAssertEqual(expectedOutput, output)
    }
    
    func testThat_ColonFollowedByMultipleSpace_IsTrimmed() {
        let testInputLine = "let a:        String?"
        let expectedOutput = "let a: String?"
        
        let output = LintSpace().ensureOneSpaceAfterColon(line: testInputLine)
        
        XCTAssertEqual(expectedOutput, output)
    }
    
    func testThat_ColonFollowedByMoreSpace_IsReplaced() {
        let testInputLines = ["let a:   Int", "let b:              String?", "[String:  AnyObject]"]
        let expectedOutputs = ["let a: Int", "let b: String?", "[String: AnyObject]"]
        
        let outputs = testInputLines.map({ LintSpace().ensureOneSpaceAfterColon(line: $0) })
        
        XCTAssertEqual(expectedOutputs, outputs)
    }
    
    func testThat_ColonFollowedByOneSpace_IsReturnedSame() {
        let inputs = ["let a: Int", "func do(a: Int, b: [String: AnyObject]) {"]
        
        let outputs = inputs.map{ LintSpace().ensureOneSpaceAfterColon(line: $0) }
        
        XCTAssertEqual(inputs, outputs)
    }
    
    func testhThat_MultipleVoilationInSingleLine_AreCorrected() {
        let input = "func do(a:Int, b:     Int) -> Int {"
        let expected = "func do(a: Int, b: Int) -> Int {"
        
        let output = LintSpace().ensureOneSpaceAfterColon(line: input)
        
        XCTAssertEqual(expected, output, "the output is \(output)")
    }
    
    func testThat_MultipleComplexVoilationInSinleLine_AreCorrected() {
        let input = "func structFromJSON(json:   [String:AnyObject], struct:SomeStruct, completion:(Bool->Void)) {"
        let expected = "func structFromJSON(json: [String: AnyObject], struct: SomeStruct, completion: (Bool->Void)) {"
        
        let output = LintSpace().ensureOneSpaceAfterColon(line: input)
        
        XCTAssertEqual(expected, output)
    }
}
