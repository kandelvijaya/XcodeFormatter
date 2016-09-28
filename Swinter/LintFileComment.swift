//  LintFileComment.swift
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import Foundation

final class LintFileComment {
    
    func extractNewCommentLines(from content: String) -> [String] {
        guard let regex = MatchPattern.fileComment.regex else {
            return []
        }
        let commentMatches = RegexpMatch.findAllMatches(in: content, with: regex)
    
        guard var firstMatches = commentMatches.first?.matches else { return [] }
        //0 -> gives whole comment which matched
        firstMatches.removeFirst()
        return firstMatches.reduce( [String]() ){  $0 + [$1.content] }
    }
    
}
