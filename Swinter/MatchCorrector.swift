//
//  RegexpReplacer.swift
//  Swinter
//
//  Created by Vijaya Prakash Kandel on 9/17/16.
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import Foundation

typealias MatchCorrectionRule = [Int: String]

struct MatchCorrectionInfo {
    let regex: NSRegularExpression
    let line: String
    let rules: MatchCorrectionRule      //correction rule
    
    init(regex: NSRegularExpression, forString line: String, correctionRules rules: [Int: String]) {
        self.regex = regex
        self.line = line
        self.rules = rules
    }
}

final class MatchCorrector {
    
    static func correct(with correctionInfo: MatchCorrectionInfo) -> String {
        let matches = RegexpMatch.findAllMatches(in: correctionInfo.line, with: correctionInfo.regex, ignoringMatch: .insideStringOrComment)
        let corrected = correct(line: correctionInfo.line, at: matches, with: correctionInfo.rules)
        return corrected
    }
    
    private static func correct(line: String, at matches: [Match], with rules: MatchCorrectionRule) -> String {
        var correctedLine = line
        var offset = 0
        
        matches.forEach {
            for (index, cpRange) in $0.matches.enumerated() {

                // Only indeces with rule are corrected.
                if let replaceMent = rules[index] {
                    let currentRange = rangeFrom(range: cpRange.range, forString: line, offset: offset)
                    let currentOffset = -cpRange.content.characters.count + replaceMent.characters.count
                    offset += currentOffset
                    
                    correctedLine.replaceSubrange(currentRange, with: replaceMent)
                }
                
            }
        }
        return correctedLine
    }
    
    private static func rangeFrom(range: Range<String.Index>, forString: String, offset: Int) -> Range<String.Index> {
        //fatal error: cannot decrement invalid index
        //fatal error: cannot increment beyond endIndex
        let lowerIndex = forString.index(range.lowerBound, offsetBy: offset)
        let upperIndex = forString.index(range.upperBound, offsetBy: offset)
        return Range(uncheckedBounds: (lowerIndex, upperIndex))
    }
    
}
