//
//  RegexpMatch.swift
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import Foundation

struct Match {
    let matches: [CaptureGroupMatchRange]
}

struct CaptureGroupMatchRange {
    let content: String
    let range: Range<String.Index>
}

struct IgnoreMatch: OptionSet {
    var rawValue: UInt8
    
    static let insideSingleComment = IgnoreMatch(rawValue: 1 << 0)
    static let insideStringQuote = IgnoreMatch(rawValue: 1 << 1)
    
    static let insideStringOrComment:IgnoreMatch = [.insideSingleComment, .insideStringQuote]
}

final class RegexpMatch {
    
    private static let quoteRegex = MatchPattern.stringQuote.regex
    private static let commentRegex = MatchPattern.singleLineComment.regex
    
    static func findAllMatches(in contentString: String, with regex: NSRegularExpression, ignoringMatch: IgnoreMatch = []) -> [Match] {
        var matches: [Match] = []
        
        //early exit when comment
        if ignoringMatch.contains(.insideSingleComment) && contentString.isInsideComment() {
            return matches
        }
        
        regex.enumerateMatches(in: contentString, options: .reportCompletion, range: NSMakeRange(0, contentString.characters.count), using: { (textCheckingResult, flags, status) in
            
            if let textChecking = textCheckingResult {
                let cpRanges = (0..<textChecking.numberOfRanges)
                    .map{ textChecking.rangeAt($0) }
                    .map{ $0.toRange(forString: contentString) }
                
                //early exit when quoted inside
                if ignoringMatch.contains(.insideStringQuote) && RegexpMatch.isMatch(atRange: cpRanges[0], insideQuoteStringOnLine: contentString) {
                    return
                }
                
                let cpContent = cpRanges.map { contentString.substring(with: $0) }
                let cpMatchRanges = zip(cpContent, cpRanges).reduce([]){ $0 + [CaptureGroupMatchRange(content: $1.0, range: $1.1)] }
                matches.append(Match(matches: cpMatchRanges))
            }
        })
        return matches
    }
    
    
    /// Find if the current range is inside double quotes
    /// If the current location is inside the quotation then lls will have odd number of `\"`
    /// We wont do this one:: "https://.." to "https: //..."
    /// The algorithm is based on the fact that we will have balanced number of \" on left or right
    /// if the match is outside of quotes.
    ///
    /// - parameter range: CaptureGroupRange
    /// - parameter line:  String
    ///
    /// - returns: Bool
    static func isMatch(atRange range: Range<String.Index>, insideQuoteStringOnLine line: String) -> Bool {
        guard line.contains(String(Character("\""))) else { return false }
        guard let regex = quoteRegex else { return false }
        let substringUntilMatch = line.substring(to: range.lowerBound)
        let leftQuoteCount = regex.numberOfMatches(in: substringUntilMatch, options: [], range: NSMakeRange(0, substringUntilMatch.characters.count) )
        return leftQuoteCount % 2 != 0
    }

}
