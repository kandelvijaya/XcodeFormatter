//
//  ColonSpacer.swift
//  SwiftyLinter
//
//  Created by Vijaya Prakash Kandel on 9/15/16.
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import Foundation

final class LintSpace {
    
    // These regular expression should have 2nd capture group
    // which does only include ___X where X
    // is the first character after space
    // and _ represents a single space
    // In case when there is no space it should match X only
    //NOTE:- Try it on www.regex101.com
    fileprivate enum RegexPattern: String {
        case colon = ".([:])([\\S]|[ ]{2,}[\\S])"
        case comma = ".(,)([\\S]|[ ]{2,}[\\S])"
        case functionReturnArrow = ".(->)([\\S]|[ ]{2,}[\\S])"
        case trailingCurlyBracket = "([^\\(\\.\\[\\s])([\\{]|[ ]{2,}\\{)"
    }
    
    fileprivate struct SpaceMatchedRange {
        let spaceCount: Int
        let matchRange: Range<String.Index>
    }
    
    func correctColonSpace(line: String) -> String {
        return corrected(line: line, forInconsistent: .colon)
    }
    
    func correctCommaSeparation(line: String) -> String {
        return corrected(line: line, forInconsistent: .comma)
    }

    func correctFunctionReturnArrow(line: String) -> String {
        return corrected(line: line, forInconsistent: .functionReturnArrow)
    }
    
    func correctTrailingCurlyBracket(line: String) -> String {
        return corrected(line: line, forInconsistent: .trailingCurlyBracket)
    }
    
}

//MARK:- Private methods

extension LintSpace {
    
    fileprivate func corrected(line: String, forInconsistent pattern: RegexPattern) -> String {
        guard let regex = regexForColonSpace(pattern: pattern) else { return line }
        let matchedRanges = findAllMatchRanges(in: line, with: regex)
        let correctedLine = correctColonSpace(for: line, at: matchedRanges)
        return correctedLine
    }

    fileprivate func correctColonSpace(for lineString: String, at matchedRanges: [SpaceMatchedRange]) -> String {
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
    }
    
    fileprivate func regexForColonSpace(pattern: RegexPattern) -> NSRegularExpression? {
        do {
            let regex = try NSRegularExpression(pattern: pattern.rawValue, options: [])
            return regex
        } catch {
            print("Bad Regular Expression \(pattern.rawValue)")
            return nil
        }
    }
    
    fileprivate func findAllMatchRanges(in lineString: String, with regex: NSRegularExpression) -> [SpaceMatchedRange] {
        var matchedRanges: [SpaceMatchedRange] = []
        
        regex.enumerateMatches(in: lineString, options: .reportCompletion, range: NSMakeRange(0, lineString.characters.count), using: { (textCheckingResult, flags, status) in
            
            if let textChecking = textCheckingResult {
                let secondCaptureGroupRange = textChecking.rangeAt(2)
                //Offset because Last char in the range is for X
                let matchedRange = rangeFrom(nsrange: secondCaptureGroupRange, forString: lineString, offset: -1)
                let matchedString = lineString.substring(with: matchedRange)
                let spaceRange = SpaceMatchedRange(spaceCount: matchedString.characters.count, matchRange: matchedRange)
                matchedRanges.append(spaceRange)
            }
        })
        return matchedRanges
    }
    
    private func rangeFrom(nsrange: NSRange, forString: String, offset: Int) -> Range<String.Index> {
        let lowerIndex = forString.index(forString.startIndex, offsetBy: nsrange.location)
        let upperIndex = forString.index(forString.startIndex, offsetBy: nsrange.location + nsrange.length + offset)
        return Range(uncheckedBounds: (lowerIndex, upperIndex))
    }

}
