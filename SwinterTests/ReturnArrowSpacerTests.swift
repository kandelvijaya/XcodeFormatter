//
//  ReturnArrowSpacerTests.swift
//  Swinter
//
//  Created by Vijaya Prakash Kandel on 16/09/16.
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import XCTest
@testable import Swinter

class ReturnArrowSpacerTests: XCTestCase {

    func testThat_NoSpaceAfterArrow_isReplacedWithSingleSpace() {
        let input = "func some() ->A"
        let expected = "func some() -> A"

        let output = LintSpace().correctFunctionReturnArrow(line: input)

        XCTAssertEqual(expected, output)
    }

    func testThat_MultipleSpacesAfterArrow_isReplacedWithSingleSpace() {
        let input = "func some()->       A"
        let expected = "func some() -> A"

        let output = LintSpace().correctFunctionReturnArrow(line: input)

        XCTAssertEqual(expected, output)
    }

    func testThat_ProperSpacedArrow_isUnchanged() {
        let input = "func that() -> This"
        let expected = input

        let output = LintSpace().correctFunctionReturnArrow(line: input)

        XCTAssertEqual(expected, output)
    }

    func testThat_MultipleArrows_areFormattedProperly() {
        let input = "func madmap(closure: (Element ->U?), anotherClosure: A->Bool) ->    E"
        let expected = "func madmap(closure: (Element -> U?), anotherClosure: A -> Bool) -> E"

        let output = LintSpace().correctFunctionReturnArrow(line: input)

        XCTAssertEqual(expected, output)
    }

}
