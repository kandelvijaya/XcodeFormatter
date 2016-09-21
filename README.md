#SwiftyLinter
[![Platform](https://img.shields.io/badge/platform-xcode8-blue.svg?style=flat
)](https://developer.apple.com/iphone/index.action)
[![Language](https://img.shields.io/badge/language-swift3-brightgreen.svg?style=flat
)](https://developer.apple.com/swift)
[![License](http://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat
)](http://mit-license.org)
[![Twitter](https://img.shields.io/badge/twitter-@kandelvijaya-blue.svg?style=flat)](http://twitter.com/kandelvijaya)

Xcode Swift Coding Guidelines Linter. 
(This is compatible with Swift3, Xcode 8 and macOS Sierra )

### Notes:
- Uses SourceKit extension that was made public in 2016 WWDC
- This is a file based Linter. 


### Features:
1. Makes classes `final` unless they are explicitly ```open``` declared.
      *TODO: Add inheritance based finlization (requires whole module lookup)*
2. In type declaration
  * `let a:String` -> `let a: String`
  * `let a    : String` ->  `let a: String`
3. In Dictionary
  * `[String:AnyObject]` -> `[String: AnyObject]` 
  * `["a"    : "apple"]` -> `["a": "apple"]`
4. Beofe/After Comma
  * `sum(a: Int,b:Int)` -> `sum(a: Int, b:Int)`
  * `sum(a: Int,    b:Int)` -> `sum(a: Int, b:Int)`
  * `sum(a: Int       ,b:Int)` -> `sum(a: Int, b:Int)`
5. Before/After return type symbol
  * `)->Int{` -> `) -> Int{` 
  * `)     -> Int{` ->  `) -> Int{`
6. Trailing `{` symbol
  * `do(){` -> `do() {` 
  * `do()   {` -> `do() {` 
  * `class A{` -> `class A {`
  * `x.map{--}.filter{--}` -> `x.map {--}. {--}`
  * `else{` -> `else {`
7. Auto Format Comment at the begining of the file (Only If the Default XCode generated exists.)
8. Insert empty line
  * empty line before and after Type creation
  * empty line before and after the ending } of that type

  ```//
     //  CommentLintTests.swift
     //  Copyright © 2016 SomeCompany. All rights reserved.
     //
     
     import Foundation

     final class EmptyLineCorrection {

          private var currentLineIndex = 0

          private enum Direction {

               case up, down

          }
     
     }
     
     ```

## Using and Customization

1 Feel free to build and run for yourself.
2 If you want to customize how the autocorrector works then `LintSpace`, `LintLine`, `LineFileComment` are the places you should be heading.
  * All these files have a regex pattern and requires a dictionary of `[LineIndex: ReplaceString]` as `rules`. Thats it! 
  * For example: to format in such way `[Int : String]`, change the dictionary rule at `LintSpace` with `[1: " ", 3: " "]` where 1 and 3 are capture groups of the regex.

## Contributing
1. Ensure to write Unit Tests for every single public API that you write. Beware of edge cases. 
2. Dont test private methods.
3. Its usually better to start by reading Unit Tests for specific area before actually doing something. Unit Tests are `the` documentation.

## In progress
1. Performance Testing and Instrumentation
2. Sub-commands for Xcode to pick individual lint items
3. Adding support to have empty before and after each `//MARK:` annoataion

## TODO
1. Performance of the whole linting/correcting process
2. Refactoring of rutines that add empty lines before/after 
