//
//  SourceEditorCommand.swift
//  Linter
//
//  Created by Vijaya Prakash Kandel on 9/11/16.
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import Foundation
import XcodeKit

class SourceEditorCommand: NSObject, XCSourceEditorCommand {
    
    func perform(with invocation: XCSourceEditorCommandInvocation, completionHandler: @escaping (Error?) -> Void ) -> Void {
        
        switch invocation.commandIdentifier {
            
            case CommandIdentifier.finilizeClass.rawValue:
                markClassFinalUnlessOpenSpecified(invocation: invocation)
            
            case CommandIdentifier.correctInterSpace.rawValue:
                ensureProperSpacing(invocation: invocation)
            
            case CommandIdentifier.correctEmptyLine.rawValue:
                ensureProperEmptyLines(invocation: invocation)
            
            case CommandIdentifier.correctComment.rawValue:
                ensureProperFileComment(invocation: invocation)
            
            case CommandIdentifier.swiftlyLintAll.rawValue:
                ensureProperSpacing(invocation: invocation)
                ensureProperEmptyLines(invocation: invocation)
                ensureProperFileComment(invocation: invocation)
            
            default:
                break
        }
        
        completionHandler(nil)
    }
    
    //MARK:- Private Methods
    
    fileprivate func forEachLine(invocation: XCSourceEditorCommandInvocation, check: (String) -> String?) {
        let originalLines = invocation.buffer.lines
        var changed: [Int: String] = [:]
        
        for (counter, lineContent) in originalLines.enumerated() {
            let lineString = String(describing: lineContent)
            if let modified = check(lineString) {
                changed[counter] = modified
            }
        }
        
        //mdofiy the lines array
        changed.forEach{ invocation.buffer.lines[$0] = $1 }
    }
}


extension SourceEditorCommand {
    
    /// Makes class declaration final
    /// Note: This doesnot check for 2 things
    /// 1. Inheritance tree. This could be added sometime later.
    /// 2. Inner classes are also finilized
    ///
    /// - parameter invocation: Text Buffer
    func markClassFinalUnlessOpenSpecified(invocation: XCSourceEditorCommandInvocation) {
        forEachLine(invocation: invocation) { lineString in
            var string = lineString
            let contains = ["class ", " class "]
            let doesnotContain = ["final ", "open ", ".class"]
            
            //If the line has " class " or "class "
            //And it doesnot have "final ", "open " or ".class" then it sounds like a class declaration
            guard string.contains(contains[0]) || string.contains(contains[1])  else { return nil }
            
            //Check if line contains keyword inside a quote
            guard !string.contains("\"") else { return nil }
            
            //TODO: classes inside should not be finilized
            guard doesnotContain.map(string.contains).filter({ $0 == true }).count == 0 else { return nil}
            let range = string.range(of: "class")
            let startIndex = range?.lowerBound
            string.insert(contentsOf: "final ", at: startIndex!)
            return string
        }
    }
    
}

extension SourceEditorCommand {
    
    /// Checks for the proper spacing in mostly 4 places
    /// 1. Trailing ) { in function declaration
    /// 2. Type information i.e. let x: String
    /// 3. Dictionary type info i.e [String: Int] or ["a": "apple"]
    /// 4. Space after a comma i.e ["a": "apple", "b": "ball"] or sum(1, 2)
    ///
    /// - parameter invocation: Text Buffer
    func ensureProperSpacing(invocation: XCSourceEditorCommandInvocation) {
        let spaceLinter = LintSpace()
        
        forEachLine(invocation: invocation) { strings in
            
            let allCorrected = [strings]
                .map { spaceLinter.correctColonSpace(line: $0) }
                .map { spaceLinter.correctCommaSeparation(line: $0) }
                .map { spaceLinter.correctTernaryOperator(line: $0) }
                .map { spaceLinter.correctFunctionReturnArrow(line: $0) }
                .map { spaceLinter.correctTrailingCurlyBracket(line: $0) }
                .first
        
            return allCorrected
        }
    }
    
}

extension SourceEditorCommand {
    
    //NOTE: App seems to crash when mutating the complete buffer directly.
    func ensureProperFileComment(invocation: XCSourceEditorCommandInvocation) {
        let newFileCommentLines = LintFileComment().extractNewCommentLines(from: invocation.buffer.completeBuffer)
        guard !newFileCommentLines.isEmpty else { return }
        //There usually are 7 lines of default Xcode comment template.
        (0..<7).forEach{ _ in invocation.buffer.lines.removeObject(at: 0) }
        
        for value in newFileCommentLines.reversed() {
            invocation.buffer.lines.insert(value, at: 0)
        }
    }
    
}

extension SourceEditorCommand {
    
    //1. Ensure empty lines at opening and ending of code blocks for Types
    //          Protocol | enum | struct | class
    //2. Ensure 1 empty line at the EOF
    //3. Ensure 1 empty line between functions
    //4. Ensure 1 empty line before and after
    //
    // NOTE: Mutation was preferred over to immutability assignment
    //       due to the fact that app crashed randomly when doing so
    //
    //      invocation.buffer.lines.removeAll()
    //      correctedLines.forEach {
    //          invocation.buffer.lines.add($0)
    //      }
    //
    //
    func ensureProperEmptyLines(invocation: XCSourceEditorCommandInvocation) {
        LintLine().ensureProperEmptyLines(in: invocation.buffer.lines)
    }
    
}


extension String: Collection {}
