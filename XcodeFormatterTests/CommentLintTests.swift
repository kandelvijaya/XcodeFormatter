//
//  CommentLintTests.swift
//  Swinter
//
//  Created by Vijaya Prakash Kandel on 9/18/16.
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import XCTest
@testable import XcodeFormatter

class CommentLintTests: XCTestCase {
    
    let defaultXcodeComment = "//\n//  ColonSpacer.swift\n//  SwiftyLinter\n//\n//  Created by Vijaya Prakash Kandel on 9/15/16.\n//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.\n//\n"
    let notDefaultXcodeComment = "//  TestComment.swift\n//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.\n//\n\n"
    let onlySwiftContent = "import Foundation\n\nfinal class ColonSpacer {\n    \n    func doThat() {\n        \n    }\n    \n}\n"
    
    
    func testThat_NewCommentLines_AreExtracted_FromDefaultXCodeGeneratedComment() {
        let input = defaultXcodeComment + onlySwiftContent
        let expected = ["//\n","//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.\n//\n"]
        
        let output = LintFileComment().extractNewCommentLines(from: input)
        
        XCTAssertEqual(expected, output)
    }
    
    func testThat_NewCommentLines_AreNotExtractedWhen_FileHasNoComments() {
        let input = onlySwiftContent
        let expected = [String]()
        
        let output = LintFileComment().extractNewCommentLines(from: input)
        
        XCTAssertEqual(expected, output)
    }
    
    func testThat_NewCommentsLines_AreNotExtracted_WhenDefaultComments_AreNotAtStartOfFile() {
        let inputs = [" \n\n " + defaultXcodeComment + onlySwiftContent, onlySwiftContent + defaultXcodeComment + onlySwiftContent]
        let expectedOutputs = [[String](), [String]()]
        
        
        let outputs = inputs.map{ LintFileComment().extractNewCommentLines(from: $0) }
        
        for (expected, output) in zip(expectedOutputs, outputs) {
            XCTAssertEqual(expected, output)
        }
    }
    
    func testThat_NewCommentLines_AreNotExtracted_WhenThereIs_CustomCommentTemplate() {
        let input = notDefaultXcodeComment + onlySwiftContent
        let expected = [String]()
        
        let output = LintFileComment().extractNewCommentLines(from: input)
        
        XCTAssertEqual(expected, output)
    }
    
}
