//
//  ColonSpacer.swift
//  SwiftyLinter
//
//  Created by Vijaya Prakash Kandel on 9/15/16.
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import Foundation

typealias MatchCorrectionRule = [Int: String]

//NOTE:- Try it on www.regex101.com
enum MatchPattern: String {
    case colon = "[\\S]([ ]*)(:)([ ]*)(?=[\\S])"
    case comma = "[\\S]([ ]*)(,)([ ]*)(?=[\\S])"
    case functionReturnArrow = "[\\S]([ ]*)(->)([ ]*)(?=[\\S])"
    case trailingCurlyBracket = "([^ \\.\\(\\[])([ ]*)\\{$"
    
    var regex: NSRegularExpression? {
        return NSRegularExpression.regexFrom(pattern: self.rawValue)
    }
    
}

final class LintSpace {
    
    func correctColonSpace(line: String) -> String {
        guard let regex = MatchPattern.colon.regex else { return line }
        guard line.contains(":") else { return line }
        let rules = [1: "", 3: " "]
        let matchCorrection = MatchCorrection(regex: regex, forString: line, correctionRules: rules)
        return Regexp.correctMatches(with: matchCorrection)
    }
    
    func correctCommaSeparation(line: String) -> String {
        guard let regex = MatchPattern.comma.regex else { return line }
        guard line.contains(",") else { return line }
        let matchCorrection = MatchCorrection(regex:regex, forString: line, correctionRules: [1: "", 3: " "] )
        return Regexp.correctMatches(with: matchCorrection)
    }
    
    func correctFunctionReturnArrow(line: String) -> String {
        guard let regex = MatchPattern.functionReturnArrow.regex else { return line }
        guard line.contains("->") else { return line }
        let matchCorrection = MatchCorrection(regex:regex, forString: line, correctionRules: [1: " ", 3: " "] )
        return Regexp.correctMatches(with: matchCorrection)
    }
    
    func correctTrailingCurlyBracket(line: String) -> String {
        guard let regex = MatchPattern.trailingCurlyBracket.regex else { return line }
        guard line.contains("{") else { return line }
        let matchCorrection = MatchCorrection(regex:regex, forString: line, correctionRules: [2: " "] )
        return Regexp.correctMatches(with: matchCorrection)
    }

}

