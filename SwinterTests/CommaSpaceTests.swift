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
        assertThat(input: input, produces: expected)
    }
    
    func testThat_ProperSpacedComma_remainsSame() {
        let input = "(a: Int, b: Int, c: Int)"
        let expected = input
        assertThat(input: input, produces: expected)
    }
    
    func testThat_OnlyMisspacedCommas_areCorrected() {
        let input = "func sum(a:Int,b: Int, c:Int,d: Int)"
        let expected = "func sum(a:Int, b: Int, c:Int, d: Int)"
        assertThat(input: input, produces: expected)
    }
    
    func testThat_SingleLineWithMultipleImproperCommas_areCorrected() {
        let input = "func sum(a:Int,b:Int,c:Int,d:String, e:Int,          f:   String,     f:Int,g:Int, h:    Int)"
        let expected = "func sum(a:Int, b:Int, c:Int, d:String, e:Int, f:   String, f:Int, g:Int, h:    Int)"
        assertThat(input: input, produces: expected)
    }
    
    func testThat_SpaceBeforeComma_IsTrimmed() {
        let input = "(x:Int    , y: Int)"
        let expected = "(x:Int, y: Int)"
        assertThat(input: input, produces: expected)
    }
    
    //MARK:- String Quoted Comma
    
    func testThat_CommaInsideStringQuote_IsNotCorrected(){
        let input = "let someQuote = \"When i say that,.... I mean it\""
        let expected = input
        assertThat(input: input, produces: expected)
    }
    
    func testThat_CommaInsideComment_IsNotCorrected() {
        let input = "//MARK:- UITableViewDelegate,UITableViewDataSource"
        let expected = input
        assertThat(input: input, produces: expected)
    }
    
    //MARK:- Testers
    private func assertThat(input: [String], produces expected: [String]) {
        for (input1, expected1) in zip(input, expected) {
            assertThat(input: input1, produces: expected1)
        }
    }
    
    private func assertThat(input: String, produces expected: String) {
        let output = LintSpace().correctCommaSeparation(line: input)
        XCTAssertEqual(expected, output)
    }

}
