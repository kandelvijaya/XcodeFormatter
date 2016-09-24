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

    /// Create a EmptyLineCorrection Object that can correct empty lines
    ///
    /// - parameter mutableContent: Array of strings
    /// - parameter codePositions:  Ordered array of CodePosition
    ///
    /// NOTE: Providing wrong order results in incorrect and undesired
    /// code correction which is doomed to be wrong at all times.
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
        if currentSearchLineIndex < 0 {
            addEmptySpace(at: 0)
            return
        }
        
        while isEmpty(line: mutableContent[currentSearchLineIndex] as! String) {
            indicesOfEmptyLines.append(currentSearchLineIndex)
            
            if currentSearchLineIndex == 0 {
                break
            } else {
                currentSearchLineIndex -= 1
            }
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
        var indicesOfEmptyLines = [Int]()           //Weired calculation of 14 billion indexes
        
        //When there is no EOF empty line then add one and return
        guard currentSearchLineIndex < mutableContent.count else {
            mutableContent.add("\n")
            return
        }
        
        while isEmpty(line: mutableContent[currentSearchLineIndex] as! String) { //TODO: match for whitespace []*\n$
            indicesOfEmptyLines.append(currentSearchLineIndex)
            if currentSearchLineIndex == mutableContent.count - 1 {
                break
            } else {
                currentSearchLineIndex += 1
            }
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
        //Removing indices.first or every index is a error index out of bound.
        indices.forEach { _ in mutableContent.removeObject(at: indices.min()! ) }
    }
    
    private func isEmpty(line: String) -> Bool {
        let trimmedLine = line.trimmingCharacters(in: CharacterSet(charactersIn: " "))
        return trimmedLine == "\n"
    }
    
}
