//
//  MatchPattern.swift
//  Swinter
//
//  Created by Vijaya Prakash Kandel on 9/27/16.
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import Foundation

/// Try it on www.regex101.com
/// Capture Groups are important. They are used as index 
/// in MatchCorrectionRule. That index starts from 1. Not 0.
enum MatchPattern: String {
    
    //Space matcher patterns
    case colon = "[\\S]([ ]*)(:)([ ]*)(?=[\\S])"
    case comma = "[\\S]([ ]*)(,)([ ]*)(?=[\\S])"
    case functionReturnArrow = "[\\S]([ ]*)(->)([ ]*)(?=[\\S])"
    case trailingCurlyBracket = "([^ \\.\\(\\[])([ ]*)\\{$"
    
    
    //Other patterns
    case stringQuote = "[^\\\\]\\\""        // Mathces all occurances of \" but not \\", \\\"
    case fileComment = "^(\\/\\/\\n)\\/\\/.*.swift\\n\\/\\/.*\\n\\/\\/\\n\\/\\/.*\\n(\\/\\/.*\\n\\/\\/\n)"
    
    
    var regex: NSRegularExpression? {
        print("called \(#file)")
        return NSRegularExpression.regexFrom(pattern: self.rawValue)
    }
    
}
