//  LintLine.swift
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import Foundation

final class LintLine {

    func emptyLineRequiredAtLinesFor(content: [String]) -> [Int] {
        return emptyLinesRequiredForCodeBlock(in: content)
    }
    
}

//MARK:- Private methods

extension LintLine {
    
    //MARK: Required empty lines
    fileprivate func ensureProperEmptyLines(in content: NSMutableArray) {
        var offset = 0
        var currentLineIndex = 0
        
        let stringLines = content.reduce([String]()) {
            $0 + [String(describing: $1)]
        }
        
        let allCodeBlocks = CodeBlockAnalyzer().codeBlocks(for: stringLines)
        
        let allPrimaryCodeBlocksSpanningMultilpleLines = allCodeBlocks.filter{
            if let type = $0.type, type != CodeBlockType.OtherKind {
                return $0.start.line != $0.end.line
            }
            return false
        }
        let primaries = allPrimaryCodeBlocksSpanningMultilpleLines
        
        let ascendingCodeBlockPosition = primaries.map({ return [$0.start, $0.end] }).flatMap({$0})
                                        .sorted { (cp1, cp2) -> Bool in
            return cp1.line < cp2.line
        }
        
        
        ascendingCodeBlockPosition.forEach {
            currentLineIndex = $0.line + offset
            
            //UP
        }
        
    }
    
    fileprivate enum Direction {
        case up
        case down
    }
    
    fileprivate func indicesWithEmptyLine(at: Direction, fromLineIndex: Int, forLines: NSMutableArray) -> [Int] {
        switch at {
        case up:
            
        case down:
            
        }
    }

}
