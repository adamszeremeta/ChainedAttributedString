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
    
    /**
     This function adds text color attribute to attributed string.
        
     - warning: If text passed in "text" parameter is not found, attribute will be applied to whole attributed string
     
     - parameter value - UIColor which should be applied as text color
     - parameter text - String for which should be applied text color (optional, default = whole attributed string)
     
     - returns: Modified NSMutableAttributedString
    */
    func textColor(value:UIColor, forText text:String? = nil) -> NSMutableAttributedString {
        
        var attributeRange:NSRange? = nil
        if let textForAttribute = text {
            
            attributeRange = self.getRangeOfStringInSelf(textForAttribute)
        }
        
        self.applyAttribute(NSForegroundColorAttributeName, withValue: value, forRange: attributeRange)
        
        return self
    }
    
    /**
     This function adds font attribute to attributed string.
     
     - warning: If text passed in "text" parameter is not found, attribute will be applied to whole attributed string
     
     - parameter value - UIFont which should be applied as font for attributed string
     - parameter text - String for which should be applied font (optional, default = whole attributed string)
     
     - returns: Modified NSMutableAttributedString
     */
    func font(value:UIFont, forText text:String? = nil) -> NSMutableAttributedString {
        
        var attributeRange:NSRange? = nil
        if let textForAttribute = text {
            
            attributeRange = self.getRangeOfStringInSelf(textForAttribute)
        }
        
        self.applyAttribute(NSFontAttributeName, withValue: value, forRange: attributeRange)
        
        return self
    }

    
    
    
    
    
    
    
    
    
    
    
    
    // MARK: Clear attributes
    
    /**
     This function removes all attributes added to this attributed string.
     
     - returns: Modified NSMutableAttributedString
     */
    func clearAllAttributes() -> NSMutableAttributedString {
        
        self.setAttributes(nil, range: self.getRangeOfSelf())
        
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