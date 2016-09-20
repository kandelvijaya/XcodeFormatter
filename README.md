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



## In progress


## TODO
1. Performance of the whole linting/correcting process
2. Refactoring Add empty lines before/after 
