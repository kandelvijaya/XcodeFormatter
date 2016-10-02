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

                // Only indeces with provided rule are corrected.
                if let replaceMent = rules[index] {
                    let currentRange = rangeFrom(range: cpRange.range, forStrings: [line, correctedLine], offset: offset)
                    let currentOffset = -cpRange.content.characters.count + replaceMent.characters.count
                    offset += currentOffset
                    correctedLine.replaceSubrange(currentRange, with: replaceMent)
                }
                
            }
        }
        return correctedLine
    }
    
    private static func rangeFrom(range: Range<String.Index>, forStrings strings: [String], offset: Int) -> Range<String.Index> {
        //fatal error: cannot decrement invalid index :: caused while removing a lot of spaces towards the end side
        //fatal error: cannot increment beyond endIndex :: caused while adding spaces towards the end side
        //To eradicate these problem we will always convert range from the largest of the provided string
        let baseString = strings.sorted(by: {$0.characters.count > $01.characters.count}).first!
        let lowerIndex = baseString.index(range.lowerBound, offsetBy: offset)
        let upperIndex = baseString.index(range.upperBound, offsetBy: offset)
        return Range(uncheckedBounds: (lowerIndex, upperIndex))
    }
    
}
