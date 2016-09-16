//
//  CommaSpaceTests.swift
//  Swinter
//
//  Created by Vijaya Prakash Kandel on 9/16/16.
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import XCTest
@testable import Swinter

final class CommaSpaceTests: XCTestCase {
 
    func testThat_CommaAndNoSpace_isSpaceSeparated() {
        let input = "func sum(a: Int,b: Int)"
        let expected = "func sum(a: Int, b: Int)"
        
        let output = LintSpace().correctCommaSeparation(line: input)
        
        XCTAssertEqual(expected, output)
    }
    
    func testThat_ProperSpacedComma_remainsSame() {
        let input = "(a: Int, b: Int, c: Int)"
        let expected = input
        
        let output = LintSpace().correctCommaSeparation(line: input)
        
        XCTAssertEqual(expected, output)
    }
    
    func testThat_OnlyMisspacedCommas_areCorrected() {
        let input = "func sum(a:Int,b: Int, c:Int,d: Int)"
        let expected = "func sum(a:Int, b: Int, c:Int, d: Int)"
        
        let output = LintSpace().correctCommaSeparation(line: input)
        
        XCTAssertEqual(expected, output)
    }
    
    func testThat_SingleLineWithMultipleImproperCommas_areCorrected() {
        let input = "func sum(a:Int,b:Int,c:Int,d:String, e:Int,          f:   String,     f:Int,g:Int, h:    Int)"
        let expected = "func sum(a:Int, b:Int, c:Int, d:String, e:Int, f:   String, f:Int, g:Int, h:    Int)"
        
        let output = LintSpace().correctCommaSeparation(line: input)
        
        XCTAssertEqual(expected, output)
    }

}
