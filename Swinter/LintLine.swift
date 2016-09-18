//  LintLine.swift
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import Foundation

final class LintLine {

    func emptyLineRequiredAtLinesFor(content: [String]) -> [Int] {
        return emptyLineRequiredAtLinesFor(content: content) + emptyLinesRequiredForEOF(in: content)
    }
    
}

//MARK:- Private methods

extension LintLine {
    
    //MARK: Required empty lines
    fileprivate func emptyLinesRequiredForCodeBlock(in content: [String]) -> [Int] {
        content.forEach{ line in
            
            Regexp.findAllMatches(in: line, with: <#T##NSRegularExpression#>)
        }
    }
    
    fileprivate func emptyLinesRequiredForEOF(in content: [String]) -> [Int] {
        
        
        return []
    }
    
    //MARK: Not required empty lines
    fileprivate func emptyLinesNotRequiredForCodeBlock(in content: [String]) -> [Int] {
        
        return []
    }
    
    fileprivate func emptyLinesNotRequiredForEOF(in content: [String]) -> [Int] {
        
        
        return []
    }
    
}
