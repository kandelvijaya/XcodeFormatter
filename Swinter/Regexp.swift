//
//  RegexpReplacer.swift
//  Swinter
//
//  Created by Vijaya Prakash Kandel on 9/17/16.
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import Foundation

struct MatchCorrection {
    
    let regex: NSRegularExpression
    let line: String
    let rules: MatchCorrectionRule      //correction rule
    
    init(regex: NSRegularExpression, forString line: String, correctionRules rules: [Int: String]) {
        self.regex = regex
        self.line = line
        self.rules = rules
    }
    
}

fileprivate struct Match {
    let matches: [CaptureGroupMatchRange]
}

fileprivate struct CaptureGroupMatchRange {
    let content: String
    let range: Range<String.Index>
}


final class Regexp {
    
    static func correctMatches(with matchCorrection: MatchCorrection) -> String {
        let matches = findAllMatches(in: matchCorrection.line, with: matchCorrection.regex)
        let corrected = correct(line: matchCorrection.line, at: matches, with: matchCorrection.rules)
        return corrected
    }
    
    static fileprivate func correct(line: String, at matches: [Match], with rules: MatchCorrectionRule) -> String {
        var correctedLine = line
        var offset = 0
        
        matches.forEach {
            for (index, cpRange) in $0.matches.enumerated() {
                if let replaceMent = rules[index] {
                    
                    let currentRange = rangeFrom(range: cpRange.range, forString: correctedLine, offset: offset)
                    let currentOffset = -cpRange.content.characters.count + replaceMent.characters.count
                    offset += currentOffset
                    
                    correctedLine.replaceSubrange(currentRange, with: replaceMent)
                }
            }
        }
        return correctedLine
    }
    
    
    static fileprivate func findAllMatches(in lineString: String, with regex: NSRegularExpression) -> [Match] {
        var matches: [Match] = []
        
        regex.enumerateMatches(in: lineString, options: .reportCompletion, range: NSMakeRange(0, lineString.characters.count), using: { (textCheckingResult, flags, status) in
            
            if let textChecking = textCheckingResult {
                let cpRanges = (1..<textChecking.numberOfRanges)
                    .map{ textChecking.rangeAt($0) }
                    .map{ $0.toRange(forString: lineString) }
                let cpContent = cpRanges.map { lineString.substring(with: $0) }
                let cpMatchRanges = zip(cpContent, cpRanges).reduce([]){ $0 + [CaptureGroupMatchRange(content: $1.0, range: $1.1)] }
                matches.append(Match(matches: cpMatchRanges))
            }
        })
        return matches
    }
    
    private static func rangeFrom(range: Range<String.Index>, forString: String, offset: Int) -> Range<String.Index> {
        let lowerIndex = forString.index(range.lowerBound, offsetBy: offset)
        let upperIndex = forString.index(range.upperBound, offsetBy: offset)
        return Range(uncheckedBounds: (lowerIndex, upperIndex))
    }
    
}

extension NSRange {
    
    func toRange(forString: String) -> Range<String.Index> {
        let lowerIndex = forString.index(forString.startIndex, offsetBy: location)
        let upperIndex = forString.index(forString.startIndex, offsetBy: location + length)
        return Range(uncheckedBounds: (lowerIndex, upperIndex))
    }
    
}

extension NSRegularExpression {
    
    static func regexFrom(pattern: String) -> NSRegularExpression? {
        do {
            let regex = try NSRegularExpression(pattern: pattern, options: [])
            return regex
        } catch {
            print("Bad Regular Expression \(pattern)")
            return nil
        }
    }
    
}
