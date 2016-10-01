//
//  TernaryOperatorSpacerTests.swift
//  Swinter
//
//  Created by Vijaya Prakash Kandel on 10/1/16.
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import XCTest
@testable import Swinter

class TernaryOperatorSpacerTests: XCTestCase {
    
    func testThat_SimpleTernaryOperator_IsCorrectedWithProperSpaces() {
        let input = "let a = true?1:2\n"
        let expected = "let a = true ? 1 : 2 \n"
        assertThat(input, produces: expected)
    }
    
    func testThat_SimpleTernaryOperator_WithProperSpacing_IsUntouched() {
        let input = "let a = true ? true : false \n"
        let expected = input
        assertThat(input, produces: expected)
    }
    
    func testThat_NestedTernaryOperator_IsCorrectedProperly() {
        let input = "let that = ( true?fals:true)?1:2\n"
        let expected = "let that = ( true ? false : true) ? 1 : 2 \n"
        assertThat(input, produces: expected)
    }
    
    func testThat_NestedTernaryWithMultipleSpaces_Arecorrected() {
        let input = " ( true ? false    :     true )?  12:   24 \n"
        let expected = " ( true ? false : true ) ? 12 : 24 \n"
        assertThat(input, produces: expected)
    }
    
    func testThat_MutlipleTernaryOperators_NotSeeminglyAllowedByCompiler_AreAlsoCorrected() {
        let input = "let a = (true     ?true   :    false)?true   :  false     ?      1:2\n"
        let expected = "let a = (true ? true : false) ? true : false ? 1 : 2\n"
        assertThat(input, produces: expected)
    }
    
    func testThat_ImproperTernaryOperator_AreNotcorrected() {
        let input = "z ?     : a"
        let expected = input
        assertThat(input, produces: expected)
    }
    
    func testThat_NearlyTernary_IsNotTouched() {
        let input = "a?:b\n"
        let expected = "a?:b\n"
        assertThat(input, produces: expected)
    }
    
    private func assertThat(_ input: String, produces expected: String) {
        let output = LintSpace().correctTernaryOperator(line: input)
        XCTAssert(output == expected)
    }
}
