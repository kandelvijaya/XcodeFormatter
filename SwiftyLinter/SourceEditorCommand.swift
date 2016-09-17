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
        
        //Switch between command names and forward to the right method
        
        markClassFinalUnlessOpenSpecified(invocation: invocation)
        ensureProperSpacing(invocation: invocation)
        
        completionHandler(nil)
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
        forEachLine(invocation: invocation) { string in
            //TODO: 1 USE REGEX
        
            //2.
            let colonCorrected = LintSpace().correctColonSpace(line: string)
            
            //3. Comma
            //let colonCommaCorrected = LintSpace().correctCommaSeparation(line: colonCorrected)

            // ->
            //let allCorrected = LintSpace().correctFunctionReturnArrow(line: colonCommaCorrected)

            return colonCorrected
        }
    }
    
    func forEachLine(invocation: XCSourceEditorCommandInvocation, check: (String) -> String?) {
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


extension String: Collection {}
