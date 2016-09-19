//  LintLine.swift
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import Foundation

final class LintLine {
    
    func ensureProperEmptyLines(in content: NSMutableArray) {
        let stringLines = content.reduce([String]()) {
            $0 + [String(describing: $1)]
        }
        let codePositions = orderedCodeBlockPosition(at: stringLines)
        EmptyLineCorrection(mutableContent: content, codePositions: codePositions).correct()
    }
    
    fileprivate func orderedCodeBlockPosition(at content: [String]) -> [CodePosition] {
        let allCodeBlocks = CodeBlockAnalyzer().codeBlocks(for: content)
        
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
        
        return ascendingCodeBlockPosition
    }
    
}
