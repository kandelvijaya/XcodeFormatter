//  LintLine.swift
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import Foundation

final class LintLine {

    private var content: NSMutableArray?

    private lazy var allCodeBlocks: [CodeBlock] = {
        guard let content = self.content else { return [] }
        let codeLines = content.reduce([String]()) {
            $0 + [String(describing: $1)]
        }
        return CodeBlockAnalyzer().codeBlocks(for: codeLines)

    }()

    func ensureProperEmptyLines(in content: NSMutableArray) {
        self.content = content
        let primaryPositon = primaryCodeBlockPositons()
        let functionPosition = functionCodeBlockPositions()
        let corrector = EmptyLineCorrection(mutableContent: content)

        corrector.add(codePositons: primaryPositon, withDirectionToCorrect: .both)
        corrector.add(codePositons: functionPosition, withDirectionToCorrect: .up)

        corrector.correct()         //The magical mutator
    }

    /// returns [CodePosition] for CodeBlocks that require empty line above and below
    private func primaryCodeBlockPositons() -> [CodePosition] {

        let allPrimaryCodeBlocksSpanningMultilpleLines = allCodeBlocks.filter {
            if let thisType = $0.type, CodeBlockType.primaries.contains(thisType) {
                return $0.start.line != $0.end.line
            }
            return false
        }
        let primaries = allPrimaryCodeBlocksSpanningMultilpleLines

        //Each codeblock has start and end Position
        return primaries.map{ [$0.start, $0.end] }.flatMap{ $0 }
    }
    
    
    /// returns [CodePositon] of Function CodeBlocks with just start position to correct 
    /// for empty line above it.
    private func functionCodeBlockPositions() -> [CodePosition] {
        let allFuncCodeBlocks = allCodeBlocks.filter {
            if let thisType = $0.type, thisType == CodeBlockType.FunctionKind {
                return true
            }
            return false
        }

        //We dont care about the end position for functions
        return allFuncCodeBlocks.map{ $0.start }
    }

}

