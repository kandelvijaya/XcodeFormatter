//
//  ColonSpacer.swift
//  SwiftyLinter
//
//  Created by Vijaya Prakash Kandel on 9/15/16.
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import Foundation

typealias MatchCorrectionRule = [Int: String]

final class LintSpace {
    
    // These regular expression should have 2nd capture group
    // which does only include ___X where X
    // is the first character after space
    // and _ represents a single space
    // In case when there is no space it should match X only
    //NOTE:- Try it on www.regex101.com
    fileprivate enum MatchPattern: String {
        case colon = "[\\S]([ ]*)(:)([ ]*)(?=[\\S])"
        case comma = "[\\S]([ ]*)(,)([ ]*)(?=[\\S])"
        case functionReturnArrow = "[\\S]([ ]*)(->)([ ]*)(?=[\\S])"
        case trailingCurlyBracket = "([^\\(\\.\\[\\s])([\\{]|[ ]{2,}\\{)"
        
        var regex: NSRegularExpression? {
            do {
                let regex = try NSRegularExpression(pattern: self.rawValue, options: [])
                return regex
            } catch {
                print("Bad Regular Expression \(self.rawValue)")
                return nil
            }
        }
    }
    
    fileprivate struct MatchCorrection {
        
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
    
    func correctColonSpace(line: String) -> String {
        guard let regex = MatchPattern.colon.regex else { return line }
        let rules = [1: "", 3: " "]
        let matchCorrection = MatchCorrection(regex: regex, forString: line, correctionRules: rules)
        return correctMatches(with: matchCorrection)
    }
    
    fileprivate func correctMatches(with matchCorrection: MatchCorrection) -> String {
        let matches = findAllMatches(in: matchCorrection.line, with: matchCorrection.regex)
        let corrected = correct(line: matchCorrection.line, at: matches, with: matchCorrection.rules)
        
        return matchCorrection.line
    }
    
}

//MARK:- Private methods

extension LintSpace {

    /*fileprivate func correctColonSpace(for lineString: String, at matchedRanges: [SpaceMatchedRange]) -> String {
        var rangePositonOffset = 0
        var correctedLine = lineString
        
        for currentMatchedRange in matchedRanges {
            let newLowerIndex = correctedLine.index(currentMatchedRange.matchRange.lowerBound, offsetBy: rangePositonOffset)
            let newUpperIndex = correctedLine.index(currentMatchedRange.matchRange.upperBound, offsetBy: rangePositonOffset)
            let correctedRange = Range(uncheckedBounds: (newLowerIndex, newUpperIndex))
            
            rangePositonOffset += 1 - currentMatchedRange.spaceCount //1 for new " "
            correctedLine.replaceSubrange(correctedRange, with: " ")
        }
        
        return correctedLine
    }*/
    
    fileprivate func correct(line: String, at matches: [Match], with rules: MatchCorrectionRule) -> String {
        
        
        return line
    }

    
    fileprivate func findAllMatches(in lineString: String, with regex: NSRegularExpression) -> [Match] {
        var matches: [Match] = []
        
        regex.enumerateMatches(in: lineString, options: .reportCompletion, range: NSMakeRange(0, lineString.characters.count), using: { (textCheckingResult, flags, status) in
            
            if let textChecking = textCheckingResult {
                let cpRanges = [1,2,3].map(textChecking.rangeAt).map{ rangeFrom(nsrange: $0, forString: lineString) }
                let cpContent = cpRanges.map { lineString.substring(with: $0) }
                let cpMatchRanges = zip(cpContent, cpRanges).reduce([]){ $0 +  [CaptureGroupMatchRange(content: $1.0, range: $1.1)] }
                matches.append(Match(matches: cpMatchRanges))
            }
        })
        return matches
    }
    
    private func rangeFrom(nsrange: NSRange, forString: String) -> Range<String.Index> {
        let lowerIndex = forString.index(forString.startIndex, offsetBy: nsrange.location)
        let upperIndex = forString.index(forString.startIndex, offsetBy: nsrange.location)
        return Range(uncheckedBounds: (lowerIndex, upperIndex))
    }

}
