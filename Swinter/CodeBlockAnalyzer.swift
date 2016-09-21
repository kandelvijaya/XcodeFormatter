//  CodeBlockAnalyzer.swift
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import Foundation

enum CodeBlockIndicator: String {
    case opening = "{"
    case closing = "}"
}

final class CodeBlockAnalyzer {
    
    private var toBeAnalysedCodePosition = [CodePosition]()
    
    public private(set) var identifiedCodeBlocks = [CodeBlock]()
    
    func codeBlocks(for content: [String]) -> [CodeBlock] {
        let codeAnalyzer = CodeBlockAnalyzer()
        for (lineIndex, lineContent) in content.enumerated() {
            
            for (section, char) in lineContent.characters.enumerated() {
                switch String(char) {
                case CodeBlockIndicator.opening.rawValue:
                    let pos = CodePosition(lineContent: lineContent, line: lineIndex, section: section, indicator: .opening)
                    codeAnalyzer.add(codePosition: pos)
                case CodeBlockIndicator.closing.rawValue:
                    let pos = CodePosition(lineContent: lineContent, line: lineIndex, section: section, indicator: .closing)
                    codeAnalyzer.add(codePosition: pos)
                default:
                    break
                }
            }
            
        }
        
        return codeAnalyzer.identifiedCodeBlocks
    }
    
    private func add(codePosition: CodePosition) {
        guard !toBeAnalysedCodePosition.isEmpty else {
            toBeAnalysedCodePosition.append(codePosition)
            return
        }
        
        guard let lastCodePosition = toBeAnalysedCodePosition.last else {
            return
        }
        
        if CodePosition.arePair(openingPosition: lastCodePosition, endingPosition: codePosition) {
            let codeBlock = CodeBlock(startPosition: lastCodePosition, endPosition: codePosition)
            identifiedCodeBlocks.append(codeBlock)
            toBeAnalysedCodePosition.removeLast()
        } else {
            toBeAnalysedCodePosition.append(codePosition)
        }
    }
    
}
