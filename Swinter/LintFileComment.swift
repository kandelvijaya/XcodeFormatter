//  LintFileComment.swift
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import Foundation

final class LintFileComment {
    
    private let regexPattern = "(\\/\\/\\n\\/\\/.*.swift\\n)\\/\\/.*\\n\\/\\/\\n\\/\\/.*\\n(\\/\\/.*\\n\\/\\/\n)"
    
    func extractNewCommentLines(from content: String) -> [String] {
        guard let regex = NSRegularExpression.regexFrom(pattern: regexPattern) else {
            return []
        }
        let commentMatches = Regexp.findAllMatches(in: content, with: regex)
    
        guard var firstMatches = commentMatches.first?.matches else { return [] }
        firstMatches.removeFirst()      //0 -> gives whole comment which matched
        return firstMatches.reduce([String]()){  $0 + [$1.content] }
    }
    
}
