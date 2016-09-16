//
//  TrailingCurlyBracketTests.swift
//  Swinter
//
//  Created by Vijaya Prakash Kandel on 9/16/16.
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import XCTest
@testable import Swinter

final class TrailingCurlyBracketTests: XCTestCase {
    
    func testThat_ClassDeclarationWithoutSpace_IsCorrected() {
        let input = "class A{"
        let expected = "class A {"
        
        let output = LintSpace().correctTrailingCurlyBracket(line: input)
        
        XCTAssertEqual(expected, output)
    }
    
    func tesThat_FunctionDeclarationBodyStart_IsCorrected() {
        let input = "func sum(a: Int, b: Int) -> Int{"
        let expected = "func sum(a: Int, b: Int) -> Int {"
        
        let output = LintSpace().correctTrailingCurlyBracket(line: input)
        
        XCTAssertEqual(expected, output)
    }
    
    func testThat_ClassDeclarationWithConformance_IsCorrected() {
        let input = "class A: UITableViewController, UITableViewDelegate{"
        let expected = "class A: UITableViewController, UITableViewDelegate {"
        
        let output = LintSpace().correctTrailingCurlyBracket(line: input)
        
        XCTAssertEqual(expected, output)
    }
    
    func testThat_OnlyCurlyBrackets_IsCorrected() {
        let input = "func sum(a:   Int,b:Int)   ->Int{"
        let expected = "func sum(a:   Int,b:Int)   ->Int {"
        
        let output = LintSpace().correctTrailingCurlyBracket(line: input)
        
        XCTAssertEqual(expected, output)
    }
    
    func testThat_MapConstruct_IsNotCorrected() {
        let input = "a.map{ $0.something()}.filter({ }).then{"
        let expected = "a.map { $0.something()}.filter({ }).then {"
        
        let output = LintSpace().correctTrailingCurlyBracket(line: input)
        
        XCTAssertEqual(expected, output)
    }

}
