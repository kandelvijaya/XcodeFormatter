//
//  Extensions.swift
//  Copyright © 2016 Vijaya Prakash Kandel. All rights reserved.
//

import Foundation


public extension NSRange {
    
    //More effiecent version required
    func toRange(forString: String) -> Range<String.Index> {
        let lowerIndex = forString.index(forString.startIndex, offsetBy: location)
        let upperIndex = forString.index(forString.startIndex, offsetBy: location + length)
        return Range(uncheckedBounds: (lowerIndex, upperIndex))
    }
    
}

public extension NSRegularExpression {
    
    static func regexFrom(pattern: String) -> NSRegularExpression? {
        do {
            let regex = try NSRegularExpression(pattern: pattern, options: [])
            return regex
        } catch {
            print("Bad Regular Expression \(pattern)")
            return nil
        }
    }
    
}
