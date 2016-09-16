//
//  ColonSpacer.swift
//  SwiftyLinter
//
//  Created by Vijaya Prakash Kandel on 9/15/16.
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import Foundation

final class LintSpace {
    
    //NOTE:- Try it on www.regex101.com
    fileprivate enum RegexPattern: String {
        case Colon = ".(:)([^ ]|[ ]{2,})."
        case Comma = ".(,)([^ ]|[ ]{2,})."
    }
    
    fileprivate enum SpaceMatchType {
        case NoSpace
        case MultipleSpace(spaceCount: Int)
    }
    
    fileprivate struct SpaceMatchedRange {
        let matchType: SpaceMatchType
        let matchRange: Range<String.Index>
    }
    
    func correctColonSpace(line: String) -> String {
        return corrected(line: line, forInconsistent: .Colon)
    }
    
    func correctCommaSeparation(line: String) -> String {
        return corrected(line: line, forInconsistent: .Comma)
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
        
        for range in matchedRanges {
            
            let newLowerIndex = correctedLine.index(range.matchRange.lowerBound, offsetBy: rangePositonOffset)
            let newUpperIndex = correctedLine.index(range.matchRange.upperBound, offsetBy: rangePositonOffset)
            let correctedRange = Range(uncheckedBounds: (newLowerIndex, newUpperIndex))
            
            switch range.matchType {
            case .NoSpace:
                rangePositonOffset += 1
                correctedLine.insert(Character(" "), at: correctedRange.lowerBound)
                
            case .MultipleSpace( let spaceCount):
                rangePositonOffset -= (spaceCount - 1) //1 for " "
                correctedLine.replaceSubrange(correctedRange, with: " ")
            }
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
                let matchedRange = rangeFrom(nsrange: secondCaptureGroupRange, forString: lineString)
                let matchedString = lineString.substring(with: matchedRange)
                
                if matchedString.contains(" ") {
                    //matched more than 1 spaces
                    let spaceRange = SpaceMatchedRange(matchType: .MultipleSpace(spaceCount: matchedString.characters.count), matchRange: matchedRange)
                    matchedRanges.append(spaceRange)
                } else {
                    //There were no spaces in between
                    let spaceRange = SpaceMatchedRange(matchType: .NoSpace, matchRange: matchedRange)
                    matchedRanges.append(spaceRange)
                }
            }
            
        })
        return matchedRanges
    }
    
    private func rangeFrom(nsrange: NSRange, forString: String) -> Range<String.Index> {
        let lowerIndex = forString.index(forString.startIndex, offsetBy: nsrange.location)
        let upperIndex = forString.index(forString.startIndex, offsetBy: nsrange.location + nsrange.length)
        return Range(uncheckedBounds: (lowerIndex, upperIndex))
    }

}
