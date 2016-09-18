//  LintFileComment.swift
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import Foundation

final class LintFileComment {
    
    private let regexPattern = "\\/\\/\\n\\/\\/(.*.swift)\\n\\/\\/.*\\n\\/\\/\\n\\/\\/.*\\n\\/\\/(.*)\\n\\/\\/"
    
    func correct(content: String) -> String {
        
        guard let regex = NSRegularExpression.regexFrom(pattern: regexPattern) else {
            return content
        }
        
        
        
        return content
    }
    
}
