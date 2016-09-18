//  CodeBlockAnalyzer.swift
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import Foundation

enum CodeBlockIndicator: String {
    case opening = "{"
    case closing = "}"
}

struct CodePosition {
    let line: Int
    let section: Int
    let indicator: CodeBlockIndicator
    
    static func arePair(openingPosition: CodePosition, endingPosition: CodePosition) -> Bool {
        switch (openingPosition.indicator, endingPosition.indicator) {
        case (.opening, .closing):
            return true
        default:
            return false
        }
    }
}

struct CodeBlock {
    let start: CodePosition
    let end: CodePosition
}

final class CodeBlockAnalyzer {
    
    private var toBeAnalysedCodePosition = [CodePosition]()
    
    public private(set) var identifiedCodeBlocks = [CodeBlock]()
    
    func add(codePosition: CodePosition) {
        guard !toBeAnalysedCodePosition.isEmpty else {
            toBeAnalysedCodePosition.append(codePosition)
            return
        }
        
        guard let lastCodePosition = toBeAnalysedCodePosition.last else {
            return
        }
        
        if CodePosition.arePair(openingPosition: lastCodePosition, endingPosition: codePosition) {
            let codeBlock = CodeBlock(start: lastCodePosition, end: codePosition)
            identifiedCodeBlocks.append(codeBlock)
            toBeAnalysedCodePosition.removeLast()
        } else {
            toBeAnalysedCodePosition.append(codePosition)
        }
    }
    
    func codeBlocks(for content: [String]) -> [CodeBlock] {
        let codeAnalyzer = CodeBlockAnalyzer()
        for (lineIndex, line) in content.enumerated() {
            
            for (section, char) in line.characters.enumerated() {
                switch String(char) {
                case CodeBlockIndicator.opening.rawValue:
                    let codePosition = CodePosition(line: lineIndex, section: section, indicator: .opening)
                    codeAnalyzer.add(codePosition: codePosition)
                case CodeBlockIndicator.closing.rawValue:
                    let codePosition = CodePosition(line: lineIndex, section: section, indicator: .closing)
                    codeAnalyzer.add(codePosition: codePosition)
                default:
                    break
                }
            }
            
        }
        
        return codeAnalyzer.identifiedCodeBlocks
    }
    
}
