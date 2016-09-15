#SwiftyLinter
Xcode Swift Coding Guidelines Linter. 

Notes:
- Uses SourceKit extension that was made public in 2016 WWDC
- This is a file based Linter. 


Features:
- Makes classes that are not `open` explicitly `final`.
      *TODO: Add inheritance based finlization (requires whole module lookup)*


In progress/ TODO:
- Proper Spacing
      1. In between type declaration `let a:String` -> `let a: String`
      2. In Dictionary i.e `[String:AnyObject]` -> `[String: AnyObject]`  or `["a":"apple"]` -> `["a": "apple"]`
      3. In function declaration ie. `func sum(x: Int, y: Int) -> Int{` -> `-> {`
      4. Removal of more than 1 space when required
      5. 1 empty line before the Type declaration and 1 empty line before the end
