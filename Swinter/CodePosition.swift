//  CodePosition.swift
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import Foundation

struct CodePosition {
    
    let lineContent: String
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
