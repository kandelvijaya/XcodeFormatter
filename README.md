#SwiftyLinter
Xcode Swift Coding Guidelines Linter. 
(This is compatible with Swift3, Xcode 8 and macOS Sierra )

Notes:
- Uses SourceKit extension that was made public in 2016 WWDC
- This is a file based Linter. 


Features:
- 1. Makes classes `final` unless they are explicitly ```open``` declared.
      *TODO: Add inheritance based finlization (requires whole module lookup)*
- 2. In between type declaration `let a:String` -> `let a: String`
- 3. In Dictionary i.e `[String:AnyObject]` -> `[String: AnyObject]`  or `["a":"apple"]` -> `["a": "apple"]`
- 4. Removal of more than 1 space when required

In progress/ TODO:
- Proper Spacing
      3. In function declaration ie. `func sum(x: Int, y: Int) -> Int{` -> `-> {`
      5. 1 empty line before the Type declaration and 1 empty line before the end
