//
//  ColonSpacer.swift
//  SwiftyLinter
//
//  Created by Vijaya Prakash Kandel on 9/15/16.
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import Foundation

final class LintSpace {
    
    // For performance reasons they are static let. 
    private struct Constants {
        static let colonRegex = MatchPattern.colon.regex
        static let commaRegex = MatchPattern.comma.regex
        static let functionReturnArrowRegex = MatchPattern.functionReturnArrow.regex
        static let trailingCurlyBracketRegex = MatchPattern.trailingCurlyBracket.regex
        static let ternaryOperatorRegex = MatchPattern.ternaryOperator.regex
    }
    
    func correctColonSpace(line: String) -> String {
        guard let regex = Constants.colonRegex else { return line }
        guard line.contains(":") else { return line }
        let correctionInfo = MatchCorrectionInfo(regex: regex, forString: line, correctionRules: [1: "", 3: " "])
        return MatchCorrector.correct(with: correctionInfo)
    }
    
    func correctCommaSeparation(line: String) -> String {
        guard let regex = Constants.commaRegex else { return line }
        guard line.contains(",") else { return line }
        let correctionInfo = MatchCorrectionInfo(regex:regex, forString: line, correctionRules: [1: "", 3: " "] )
        return MatchCorrector.correct(with: correctionInfo)
    }
    
    func correctFunctionReturnArrow(line: String) -> String {
        guard let regex = Constants.functionReturnArrowRegex else { return line }
        guard line.contains("->") else { return line }
        let correctionInfo = MatchCorrectionInfo(regex:regex, forString: line, correctionRules: [1: " ", 3: " "] )
        return MatchCorrector.correct(with: correctionInfo)
    }
    
    func correctTrailingCurlyBracket(line: String) -> String {
        guard let regex = Constants.trailingCurlyBracketRegex else { return line }
        guard line.contains("{") else { return line }
        let correctionInfo = MatchCorrectionInfo(regex:regex, forString: line, correctionRules: [2: " "] )
        return MatchCorrector.correct(with: correctionInfo)
    }
    
    /// Dont call Colon Space Linter after this method if you want to preserve correction
    /// Call ColonSpaceLint()  -- then call this one for best results
    ///
    func correctTernaryOperator(line: String) -> String {
        guard let regex = Constants.ternaryOperatorRegex else { return line }
        guard line.contains(":") && line.contains("?") else { return line }
        let correctionInfo = MatchCorrectionInfo(regex: regex, forString: line, correctionRules: [1: " ", 2: " ", 3: " ", 4: " "])
        return MatchCorrector.correct(with: correctionInfo)
    }

}

