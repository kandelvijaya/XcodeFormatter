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
    
    /// Provide a MutableArray of String lines and importantly
    /// Ascending Ordered CodePosition.
    ///
    ///NOTE: Providing wrong order results in incorrect and undesired
    // code correction which is doomed to be wrong at all times.
    init(mutableContent: NSMutableArray, ascendingOrdered codePositions: [CodePosition]) {
        self.mutableContent = mutableContent
        self.codePositions = codePositions
    }
    
    func correct() {
        codePositions.forEach { position in
            correctEmptySpaceAbove(position: position)
            correctEmptySpaceBelow(position: position)
        }
    }
    
    //TODO: Refactor these 2 algorithms into a simplified model
    private func correctEmptySpaceAbove(position: CodePosition) {
        var currentSearchLineIndex = correctedLineIndex(for: position) - 1       //looking upwards
        var indicesOfEmptyLines = [Int]()
        
        //When the code block starts the file.
        guard currentSearchLineIndex > 0 else {
            addEmptySpace(at: 0)
            return
        }
        
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
            //using correctedPosition is wrong here
            addEmptySpace(at: indicesOfEmptyLines[0])
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
