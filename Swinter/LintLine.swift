//  LintLine.swift
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import Foundation

final class LintLine {
    
    func ensureProperEmptyLines(in content: NSMutableArray) {
        let codePositions = orderedCodeBlockPosition(for: content)
        let corrector = EmptyLineCorrection(mutableContent: content, ascendingOrdered: codePositions)
        corrector.correct()         //The magical mutator
    }
    
    fileprivate func orderedCodeBlockPosition(for content: NSMutableArray) -> [CodePosition] {
        
        let codeLines = content.reduce([String]()) {
            $0 + [String(describing: $1)]
        }
        
        let allCodeBlocks = CodeBlockAnalyzer().codeBlocks(for: codeLines)
        
        let allPrimaryCodeBlocksSpanningMultilpleLines = allCodeBlocks.filter{
            if let thisType = $0.type, CodeBlockType.primaries.contains(thisType) {
                return $0.start.line != $0.end.line
            }
            return false
        }
        let primaries = allPrimaryCodeBlocksSpanningMultilpleLines
        
        //Each codeblock has start and end Position
        //EmptyLineCorrection expects [codePosition] as a ascending ordered
        let ascendingCodeBlockPosition = primaries.map({ [$0.start, $0.end] })
            .flatMap({$0})
            .sorted { (cp1, cp2) -> Bool in
                return cp1.line < cp2.line
        }
        
        return ascendingCodeBlockPosition
    }
    
}
