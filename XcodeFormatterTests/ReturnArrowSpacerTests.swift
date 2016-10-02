//
//  ReturnArrowSpacerTests.swift
//  Swinter
//
//  Created by Vijaya Prakash Kandel on 16/09/16.
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import XCTest
@testable import XcodeFormatter

class ReturnArrowSpacerTests: XCTestCase {

    func testThat_NoSpaceAfterArrow_isReplacedWithSingleSpace() {
        let input = "func some() ->A"
        let expected = "func some() -> A"
        assertThat(input: input, produces: expected)
    }

    func testThat_MultipleSpacesAfterArrow_isReplacedWithSingleSpace() {
        let input = "func some()->       A"
        let expected = "func some() -> A"
        assertThat(input: input, produces: expected)
    }

    func testThat_ProperSpacedArrow_isUnchanged() {
        let input = "func that() -> This"
        let expected = input
        assertThat(input: input, produces: expected)
    }

    func testThat_MultipleArrows_areFormattedProperly() {
        let input = "func madmap(closure: (Element ->U?), anotherClosure: A->Bool) ->    E"
        let expected = "func madmap(closure: (Element -> U?), anotherClosure: A -> Bool) -> E"
        assertThat(input: input, produces: expected)
    }
    
    func testThat_ArrowInsideStringQuote_IsNotCorrected() {
        let input = "\"func that() ->this\""
        let expected = input
        assertThat(input: input, produces: expected)
    }
    
    private func assertThat(input: String, produces expected: String) {
        let output = LintSpace().correctFunctionReturnArrow(line: input)
        XCTAssertEqual(expected, output)
    }

}
