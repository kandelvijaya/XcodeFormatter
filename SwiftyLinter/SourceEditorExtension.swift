//
//  SourceEditorExtension.swift
//  Linter
//
//  Created by Vijaya Prakash Kandel on 9/11/16.
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import Foundation
import XcodeKit

enum CommandIdentifier: String {
    
    case swiftlyLintAll = "lintAll"
    case finilizeClass = "finilizeClass"
    case correctEmptyLine = "correctEmptyLine"
    case correctInterSpace = "correctInterSpace"
    case correctComment = "correctComment"
    
}

enum CommandName: String {
    
    case swiftlyLintAll = "All(Line, Comment, Space) [1.0]"
    case finilizeClass = "Finilize Class"
    case correctEmptyLine = "Correct Empty Line"
    case correctInterSpace = "Correct Inter Space"
    case correctComment = "Correct Comment"
    
}

struct Command {
    
    static let moduleName = Bundle.main.infoDictionary?["CFBundleDisplayName"] as? String ?? ""
    
    //File Name
    static let principleClass =  moduleName + ".SourceEditorCommand"
    
    //Command Name and identifier
    static let swiftlyLintAll = (CommandName.swiftlyLintAll, CommandIdentifier.swiftlyLintAll)
    static let finilizeClass = (CommandName.finilizeClass, CommandIdentifier.finilizeClass)
    static let correctEmptyLines = (CommandName.correctEmptyLine, CommandIdentifier.correctEmptyLine)
    static let correctInterSpaces = (CommandName.correctInterSpace, CommandIdentifier.correctInterSpace)
    static let correctComment = (CommandName.correctComment, CommandIdentifier.correctComment)
    
    private static func all() -> [(CommandName, CommandIdentifier)] {
        return [swiftlyLintAll, finilizeClass, correctEmptyLines, correctInterSpaces, correctComment]
    }
    
    static func allCommands() -> [[XCSourceEditorCommandDefinitionKey: Any]] {
        return all().map {
            [XCSourceEditorCommandDefinitionKey.classNameKey: principleClass,
             XCSourceEditorCommandDefinitionKey.identifierKey: $0.1.rawValue,
             XCSourceEditorCommandDefinitionKey.nameKey: $0.0.rawValue
             ]
        }
    }
    
}

class SourceEditorExtension: NSObject, XCSourceEditorExtension {
    
    func extensionDidFinishLaunching() {}
    
     var commandDefinitions: [[XCSourceEditorCommandDefinitionKey: Any]] {
        return Command.allCommands()
     }
    
}
