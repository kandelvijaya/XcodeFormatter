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
        for (lineIndex, lineContent) in content.enumerated() {

            if lineContent.isInsideComment() { continue }
            
            //Early Exit
            if !lineContent.contains(CodeBlockIndicator.opening.rawValue) && !lineContent.contains(CodeBlockIndicator.closing.rawValue) {
                continue
            }

            //TODO: this method takes a lot of CPU cycles. Find a alternative.
            for (section, char) in lineContent.characters.enumerated() where !isCharacterInsideStringQuote(at: section, onLine: lineContent) {
                switch String(char) {
                case CodeBlockIndicator.opening.rawValue:
                    let pos = CodePosition(lineContent: lineContent, line: lineIndex, section: section, indicator: .opening)
                    add(codePosition: pos)
                case CodeBlockIndicator.closing.rawValue:
                    let pos = CodePosition(lineContent: lineContent, line: lineIndex, section: section, indicator: .closing)
                    add(codePosition: pos)
                default:
                    break
                }
            }
            
        }
        
        return identifiedCodeBlocks
    }
    
    private func add(codePosition: CodePosition) {
        if toBeAnalysedCodePosition.isEmpty {
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
    
    private func isCharacterInsideStringQuote(at section: Int, onLine line: String) -> Bool {
        let startIndex = line.index(line.startIndex, offsetBy: section)
        let endIndex = line.index(line.startIndex, offsetBy: section + 1)
        let range = Range(uncheckedBounds: (startIndex, endIndex))
        return RegexpMatch.isMatch(atRange: range, insideQuoteStringOnLine: line)
    }

}

