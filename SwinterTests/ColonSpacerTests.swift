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
        
        let output = LintSpace().correctColonSpace(line: input)
        
        XCTAssertEqual(expected, output)
    }
    
    func testThat_ColonFollowedByMultipleSpace_isTrimmedToOneSpace() {
        let input = "let a:        String?"
        let expected = "let a: String?"
        
        let output = LintSpace().correctColonSpace(line: input)
        
        XCTAssertEqual(expected, output)
    }
    
    func testThat_ColonFollowedByMultipleSpace_isTrimmed() {
        let inputs = ["let a:   Int", "let b:              String?", "[String:  AnyObject]"]
        let expectedOutputs = ["let a: Int", "let b: String?", "[String: AnyObject]"]
        
        let outputs = inputs.map({ LintSpace().correctColonSpace(line: $0) })
        
        XCTAssertEqual(expectedOutputs, outputs)
    }
    
    func testThat_ColonFollowedByOneSpace_isReturnedSame() {
        let inputs = ["let a: Int", "func do(a: Int, b: [String: AnyObject]) {"]
        let expectedOutputs = inputs
        
        let outputs = inputs.map{ LintSpace().correctColonSpace(line: $0) }
        
        XCTAssertEqual(expectedOutputs, outputs)
    }
    
    func testThat_MultipleVoilationInSingleLine_areCorrected() {
        let input = "func do(a:Int, b:     Int) -> Int {"
        let expected = "func do(a: Int, b: Int) -> Int {"
        
        let output = LintSpace().correctColonSpace(line: input)
        
        XCTAssertEqual(expected, output, "the output is \(output)")
    }
    
    func testThat_MultipleComplexVoilationInSinleLine_areCorrected() {
        let input = "func structFromJSON(json:   [String:AnyObject], struct:SomeStruct, completion:(Bool->Void)) {"
        let expected = "func structFromJSON(json: [String: AnyObject], struct: SomeStruct, completion: (Bool->Void)) {"
        
        let output = LintSpace().correctColonSpace(line: input)
        
        XCTAssertEqual(expected, output)
    }
    
}
