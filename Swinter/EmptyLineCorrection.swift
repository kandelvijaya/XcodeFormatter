//  EmptyLineCorrection.swift
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import Foundation

class EmptyLineCorrection {
    
    private let mutableContent: NSMutableArray
    private let codePositions: [CodePosition]
    private var offset = 0
    private var currentLineIndex = 0
    
    private enum Direction {
        case up, down
    }
    
    init(mutableContent: NSMutableArray, codePositions: [CodePosition]) {
        self.mutableContent = mutableContent
        self.codePositions = codePositions
    }
    
    func correct() {
        codePositions.forEach { position in
            correctEmptySpaceAbove(position: position)
            correctEmptySpaceBelow(position: position)
        }
    }
    
    private func correctEmptySpaceAbove(position: CodePosition) {
        var currentSearchLineIndex = correctedLineIndex(for: position) - 1       //looking upwards
        var indicesOfEmptyLines = [Int]()
        
        while ((mutableContent[currentSearchLineIndex] as! String) == "\n") {
            indicesOfEmptyLines.append(currentSearchLineIndex)
            currentSearchLineIndex -= 1
        }
        
        if indicesOfEmptyLines.count == 0 {
            addEmptySpace(at: correctedLineIndex(for: position))
        } else if indicesOfEmptyLines.count == 1{
            return
        } else {
            removeAllEmptySpace(atIndices: indicesOfEmptyLines)
            addEmptySpace(at: correctedLineIndex(for: position))
        }
    }
    
    private func correctEmptySpaceBelow(position: CodePosition) {
        var currentSearchLineIndex = correctedLineIndex(for: position) + 1       //looking downwards
        var indicesOfEmptyLines = [Int]()
        
        //When there is no EOF empty line then add one and return
        guard currentSearchLineIndex < mutableContent.count else {
            mutableContent.add("\n")
            return
        }
        
        while ((mutableContent[currentSearchLineIndex] as! String) == "\n") {
            indicesOfEmptyLines.append(currentSearchLineIndex)
            currentSearchLineIndex += 1
        }
        
        if indicesOfEmptyLines.count == 0 {
            addEmptySpace(at: correctedLineIndex(for: position) + 1)
        } else if indicesOfEmptyLines.count == 1{
            return
        } else {
            removeAllEmptySpace(atIndices: indicesOfEmptyLines)
            addEmptySpace(at: correctedLineIndex(for: position) + 1)
        }
    }
    
    private func correctedLineIndex(for position: CodePosition) -> Int {
        return position.line + offset
    }
    
    private func addEmptySpace(at index: Int) {
        offset += 1
        mutableContent.insert("\n", at: index)
    }
    
    private func removeAllEmptySpace(atIndices indices: [Int]) {
        offset += -indices.count
        indices.forEach { mutableContent.removeObject(at: $0) }
    }
    
}
