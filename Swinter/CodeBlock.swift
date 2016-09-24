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
    
    static func primaryTypesStringRepresentation() -> [String] {
        return [CodeBlockType.ProtocolKind.rawValue, CodeBlockType.ClassKind.rawValue, CodeBlockType.StructKind.rawValue,
                CodeBlockType.EnumKind.rawValue, CodeBlockType.FunctionKind.rawValue, CodeBlockType.ExtensionKind.rawValue]
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
        let includedTypeRep = CodeBlockType.primaryTypesStringRepresentation().filter{
            //In all case Type are followed with Space.
            // sometimes there might be .class
            typeInfoLine.contains($0 + " ") && !typeInfoLine.contains("."+$0)
        }

        //NOTE: This is a intermediate fix to allow statements such as
        ///NOTE: class func dosomething() { }
        ///NOTE: protocol A: class { }
        let intermediate = includedTypeRep.reduce(""){ $0 + $1}
        if intermediate == "class"+"func" {
            return CodeBlockType.FunctionKind
        }
        if intermediate == "protocol"+"class" {
            return CodeBlockType.ProtocolKind
        }

        if let foundTypeRep = includedTypeRep.first {
            return CodeBlockType(rawValue: foundTypeRep)!
        } else {
            return CodeBlockType.OtherKind
        }
    }
    
}
