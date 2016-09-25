//  EmptyLineCorrection.swift
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import Foundation

enum CodeDirection {
    case down, up, both
}

class EmptyLineCorrection {

    typealias CodePositonToCorrect = (CodePosition, CodeDirection)

    private let mutableContent: NSMutableArray
    private var codePositionsToCorrect: [CodePositonToCorrect] = []
    private var offset = 0
    private var currentLineIndex = 0

    /// Create a EmptyLineCorrection Object that can correct empty lines
    ///
    /// - parameter mutableContent: Array of strings
    init(mutableContent: NSMutableArray) {
        self.mutableContent = mutableContent
    }

    /// Add code positions where empty lines should be added or removed
    /// depending on the direction parameter that is passed. Provided
    /// codePositos will be sorted in ascending order before correction.
    /// Calling this method multiple times will add the unique values 
    /// and apply the correction. 
    /// NOTE: 2 code positions with same lineIndex but different section/column
    /// values will not add/remove 2 lines. It just adds the work.
    ///
    /// - parameter codePositons: [CodePosition]
    /// - parameter direction:    CodeDirection. which direction to correct.
    func add(codePositons: [CodePosition], withDirectionToCorrect direction: CodeDirection) {
        let newPosition = codePositons.map{ ($0, direction) }
        codePositionsToCorrect.append(contentsOf: newPosition)
    }

    func correct() {
        codePositionsToCorrect.sorted { (cp1, cp2) -> Bool in
                return cp1.0.line < cp2.0.line
        }
        .forEach { pos in
            if pos.1 == .both {
                correctEmptySpaceAbove(position: pos.0)
                correctEmptySpaceBelow(position: pos.0)
            } else if pos.1 == .up {
                correctEmptySpaceAbove(position: pos.0)
            } else if pos.1 == .down {
                correctEmptySpaceAbove(position: pos.0)
            }
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
