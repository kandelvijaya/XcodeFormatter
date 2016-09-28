//  CodeBlock.swift
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import Foundation

enum CodeBlockType: String {
    
    case ProtocolKind = "protocol"
    case ClassKind = "class"
    case StructKind = "struct"
    case EnumKind = "enum"
    case ExtensionKind  = "extension"
    case FunctionKind = "func"
    case OtherKind = ""     //NOTSET

    static var primaries: [CodeBlockType] {
        return [.ProtocolKind, .ClassKind, .StructKind, .EnumKind, .ExtensionKind]
    }

    //Other is not part of all
    static var all: [CodeBlockType] {
        return primaries + [.FunctionKind]
    }
    
}

struct CodeBlock {
    
    let start: CodePosition
    let end: CodePosition
    var type: CodeBlockType?
    
    init(startPosition: CodePosition, endPosition: CodePosition) {
        start = startPosition
        end = endPosition
        type = typeForCodeBlock()
    }
    
    ///Type information is usually encoded into the starting line.
    ///Not doing so is a bad coding design in this projects case.
    /// For example:
    ///
    /// class A {
    ///    let x: Int
    /// }
    ///
    /// Similar is the case for all constructs in Swift
    ///Note:
    ///This method is only concious about Types of primary things
    ///which include Class, Enum, Struct, Protocol, Extension. 
    ///The rest are categorized into Other.
    ///
    ///Beware of things like checking against .class
    ///
    ///
    private func typeForCodeBlock() -> CodeBlockType {
        let typeInfoLine = start.lineContent

        //In all case, Type are followed with Space.
        //exclude lines like these `X.map{ $0.class }.forEach{` although there is a class keyword
        let includedTypeRep = CodeBlockType.all.map{ $0.rawValue }.filter{
            typeInfoLine.contains($0 + " ") && !typeInfoLine.contains("."+$0)
        }

        //NOTE: Anticipating that a line might have two keywords for code blocks like `class func`
        let intermediate = includedTypeRep.reduce(""){ $0 + $1}

        // to exclude `class func dosomething() { }` to have line separators
        if intermediate == CodeBlockType.ClassKind.rawValue + CodeBlockType.FunctionKind.rawValue {
            return CodeBlockType.FunctionKind
        }

        ///to exclude `protocol A: class{` to have line separators
        if intermediate == CodeBlockType.ProtocolKind.rawValue + CodeBlockType.ClassKind.rawValue {
            return CodeBlockType.ProtocolKind
        }

        if let foundTypeRep = includedTypeRep.first {
            return CodeBlockType(rawValue: foundTypeRep)!
        } else {
            return CodeBlockType.OtherKind
        }
    }
    
}

//MARK:- empty line analyzers
extension CodeBlock {

    func lineIndexesOfEmptyLinesAtStart(content: [String]) -> [Int] {
        var accumulator = [Int]()
        var currentLineIndex = self.start.line + 1

        while content[currentLineIndex] == "/n" {
            accumulator.append(currentLineIndex)
            currentLineIndex += 1
        }
        return accumulator
    }

    func lineIndexesOfEmptyLinesBeforeEnd(content: [String]) -> [Int] {
        var accumulator = [Int]()
        var currentLineIndex = self.start.line - 1

        while content[currentLineIndex] == "/n" {
            accumulator.append(currentLineIndex)
            currentLineIndex -= 1
        }
        return accumulator
    }

}
