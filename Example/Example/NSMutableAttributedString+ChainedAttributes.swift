//
//  NSMutableAttributedString+ChainedAttributes.swift
//  Example
//
//  Created by Adam Szeremeta on 29.06.2016.
//  Copyright © 2016 Example. All rights reserved.
//

import Foundation
import UIKit

public extension NSMutableAttributedString {
    
    // MARK: Chained attributes
    
    func textColor(value:UIColor, forText text:String? = nil) -> NSMutableAttributedString {
        
        var attributeRange:NSRange? = nil
        if let textForAttribute = text {
            
            attributeRange = self.getRangeOfStringInSelf(textForAttribute)
        }
        
        self.applyAttribute(NSForegroundColorAttributeName, withValue: value, forRange: attributeRange)
        
        return self
    }
    
    // MARK: Range
    
    private func getRangeOfSelf() -> NSRange {
        
        return NSRange(location: 0, length: self.length)
    }
    
    private func getRangeOfStringInSelf(value:String) -> NSRange? {
        
        let range = (self.string as NSString).rangeOfString(value)
        return range.location == NSNotFound ? nil : range
    }
    
    // MARK: Applying attributes
    
    private func applyAttribute(attributeName:String, withValue value:AnyObject, forRange range:NSRange? = nil) {
        
        let attributeRange = range ?? self.getRangeOfSelf()
        self.addAttribute(attributeName, value: value, range: attributeRange)
    }
    
}