//
//  ColonSpacer.swift
//  SwiftyLinter
//
//  Created by Vijaya Prakash Kandel on 9/15/16.
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import Foundation

final class LintSpace {
    
    let inconsistentColonSpaceRegex = ".(:)([^ ]|[ ]{2,})."
    
    func ensureOneSpaceAfterColon(line: String) -> String {
        var lineString = line
        
        do {
            let regex = try NSRegularExpression(pattern: inconsistentColonSpaceRegex, options: [])
            
            regex.enumerateMatches(in: lineString, options: .reportCompletion, range: NSMakeRange(0, lineString.characters.count), using: { (textCheckingResult, flags, status) in
                
                if let textChecking = textCheckingResult {
                    let range = textChecking.rangeAt(2)
                    let matchedString = (lineString as NSString).substring(with: range)
                    if matchedString.contains(" ") {
                        //matched more than 1 spaces
                        lineString.insert(Character(" "), at: lineString.index(lineString.startIndex, offsetBy: range.location))
                        let lowerIndex = lineString.index(lineString.startIndex, offsetBy: range.location)
                        let upperIndex = lineString.index(lineString.startIndex, offsetBy: range.location + range.length)
                        let subrange = ClosedRange(uncheckedBounds: (lowerIndex ,upperIndex))
                        lineString.replaceSubrange(subrange, with: " ")
                    } else {
                        //There were no spaces in between
                        let insertSpaceIndex = lineString.index(lineString.startIndex, offsetBy: range.location)
                        lineString.insert(" ", at: insertSpaceIndex)
                    }
                }
                
            })
        } catch {
            print("Bad Regular Expression \(inconsistentColonSpaceRegex)")
        }
        
        return lineString
    }
    
}
