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
        
     - warning: If text passed in "text" parameter is not found, attribute will be applied to whole attributed string. Only first occurence of "text" is styled.
     
     - parameter value - UIColor which should be applied as text color
     - parameter text - String for which should be applied text color (optional, default = whole attributed string)
     
     - returns: Modified NSMutableAttributedString
    */
    func textColor(_ value:UIColor, forText text:String? = nil) -> NSMutableAttributedString {
        
        var attributeRange:NSRange? = nil
        if let textForAttribute = text {
            
            attributeRange = self.getRangeOfStringInSelf(textForAttribute)
        }
        
        self.applyAttribute(NSForegroundColorAttributeName, withValue: value, forRange: attributeRange)
        
        return self
    }
    
    /**
     This function adds font attribute to attributed string.
     
     - warning: If text passed in "text" parameter is not found, attribute will be applied to whole attributed string. Only first occurence of "text" is styled.
     
     - parameter value - UIFont which should be applied as font for attributed string
     - parameter text - String for which should be applied font (optional, default = whole attributed string)
     
     - returns: Modified NSMutableAttributedString
     */
    func font(_ value:UIFont, forText text:String? = nil) -> NSMutableAttributedString {
        
        var attributeRange:NSRange? = nil
        if let textForAttribute = text {
            
            attributeRange = self.getRangeOfStringInSelf(textForAttribute)
        }
        
        self.applyAttribute(NSFontAttributeName, withValue: value, forRange: attributeRange)
        
        return self
    }

    /**
     This function adds background color attribute to attributed string.
     
     - warning: If text passed in "text" parameter is not found, attribute will be applied to whole attributed string. Only first occurence of "text" is styled.
     
     - parameter value - UIColor which should be applied as background color for attributed string
     - parameter text - String for which should be applied font (optional, default = whole attributed string)
     
     - returns: Modified NSMutableAttributedString
     */
    func backgroundColor(_ value:UIColor, forText text:String? = nil) -> NSMutableAttributedString {
        
        var attributeRange:NSRange? = nil
        if let textForAttribute = text {
            
            attributeRange = self.getRangeOfStringInSelf(textForAttribute)
        }
        
        self.applyAttribute(NSBackgroundColorAttributeName, withValue: value, forRange: attributeRange)
        
        return self
    }

    /**
     This function adds kern spacing attribute to attributed string.
     
     - warning: If text passed in "text" parameter is not found, attribute will be applied to whole attributed string. Only first occurence of "text" is styled.
     
     - parameter value - CGFloat which should be applied as kern spacing for attributed string
     - parameter text - String for which should be applied font (optional, default = whole attributed string)
     
     - returns: Modified NSMutableAttributedString
     */
    func kernSpacing(_ value:CGFloat, forText text:String? = nil) -> NSMutableAttributedString {
        
        var attributeRange:NSRange? = nil
        if let textForAttribute = text {
            
            attributeRange = self.getRangeOfStringInSelf(textForAttribute)
        }
        
        self.applyAttribute(NSKernAttributeName, withValue: value as AnyObject, forRange: attributeRange)
        
        return self
    }

    /**
     This function adds underline attribute to attributed string.
     
     - warning: If text passed in "text" parameter is not found, attribute will be applied to whole attributed string. Only first occurence of "text" is styled.
     
     - parameter value - CGFloat which should be applied as underline for attributed string
     - parameter text - String for which should be applied font (optional, default = whole attributed string)
     
     - returns: Modified NSMutableAttributedString
     */
    func underline(_ value:CGFloat, forText text:String? = nil) -> NSMutableAttributedString {
        
        var attributeRange:NSRange? = nil
        if let textForAttribute = text {
            
            attributeRange = self.getRangeOfStringInSelf(textForAttribute)
        }
        
        self.applyAttribute(NSUnderlineStyleAttributeName, withValue: value as AnyObject, forRange: attributeRange)
        
        return self
    }

    /**
     This function adds underline color attribute to attributed string.
     
     - warning: If text passed in "text" parameter is not found, attribute will be applied to whole attributed string. Only first occurence of "text" is styled.
     
     - parameter value - UIColor which should be applied as underline color for attributed string
     - parameter text - String for which should be applied font (optional, default = whole attributed string)
     
     - returns: Modified NSMutableAttributedString
     */
    func underlineColor(_ value:UIColor, forText text:String? = nil) -> NSMutableAttributedString {
        
        var attributeRange:NSRange? = nil
        if let textForAttribute = text {
            
            attributeRange = self.getRangeOfStringInSelf(textForAttribute)
        }
        
        self.applyAttribute(NSUnderlineColorAttributeName, withValue: value, forRange: attributeRange)
        
        return self
    }

    /**
     This function adds strike through attribute to attributed string.
     
     - warning: If text passed in "text" parameter is not found, attribute will be applied to whole attributed string. Only first occurence of "text" is styled.
     
     - parameter value - CGFloat which should be applied as strike through for attributed string
     - parameter text - String for which should be applied font (optional, default = whole attributed string)
     
     - returns: Modified NSMutableAttributedString
     */
    func strikeThrough(_ value:CGFloat, forText text:String? = nil) -> NSMutableAttributedString {
        
        var attributeRange:NSRange? = nil
        if let textForAttribute = text {
            
            attributeRange = self.getRangeOfStringInSelf(textForAttribute)
        }
        
        self.applyAttribute(NSStrikethroughStyleAttributeName, withValue: value as AnyObject, forRange: attributeRange)
        
        return self
    }

    /**
     This function adds strike through color attribute to attributed string.
     
     - warning: If text passed in "text" parameter is not found, attribute will be applied to whole attributed string. Only first occurence of "text" is styled.
     
     - parameter value - UIColor which should be applied as strike through color for attributed string
     - parameter text - String for which should be applied font (optional, default = whole attributed string)
     
     - returns: Modified NSMutableAttributedString
     */
    func strikeThroughColor(_ value:UIColor, forText text:String? = nil) -> NSMutableAttributedString {
        
        var attributeRange:NSRange? = nil
        if let textForAttribute = text {
            
            attributeRange = self.getRangeOfStringInSelf(textForAttribute)
        }
        
        self.applyAttribute(NSStrikethroughColorAttributeName, withValue: value, forRange: attributeRange)
        
        return self
    }

    /**
     This function adds link attribute to attributed string.
     
     - warning: If text passed in "text" parameter is not found, attribute will be applied to whole attributed string. Only first occurence of "text" is styled.
     
     - parameter value - UIColor which should be applied as link for attributed string
     - parameter text - String for which should be applied font (optional, default = whole attributed string)
     
     - returns: Modified NSMutableAttributedString
     */
    func link(_ value:String, forText text:String? = nil) -> NSMutableAttributedString {
        
        var attributeRange:NSRange? = nil
        if let textForAttribute = text {
            
            attributeRange = self.getRangeOfStringInSelf(textForAttribute)
        }
        
        self.applyAttribute(NSLinkAttributeName, withValue: value as AnyObject, forRange: attributeRange)
        
        return self
    }

    /**
     This function adds paragraph style with text alignment attributed string.
     
     - warning: If text passed in "text" parameter is not found, attribute will be applied to whole attributed string. Only first occurence of "text" is styled.
     
     - parameter alignment - NSTextAlignment which should be applied as alignment to the paragraph style
     - parameter text - String for which the paragraph style will be applied to (optional, default = whole attributed string)
     
     - returns: Modified NSMutableAttributedString
     */
    func alignment(_ alignment:NSTextAlignment, forText text:String? = nil) -> NSMutableAttributedString {
        
        var attributeRange:NSRange? = nil
        if let textForAttribute = text {
            attributeRange = self.getRangeOfStringInSelf(textForAttribute)
        }
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        
        self.applyAttribute(NSParagraphStyleAttributeName, withValue: paragraphStyle as AnyObject, forRange: attributeRange)
        
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
    
    fileprivate func getRangeOfSelf() -> NSRange {
        
        return NSRange(location: 0, length: self.length)
    }
    
    fileprivate func getRangeOfStringInSelf(_ value:String) -> NSRange? {
        
        let range = (self.string as NSString).range(of: value)
        return range.location == NSNotFound ? nil : range
    }
    
    // MARK: Applying attributes
    
    fileprivate func applyAttribute(_ attributeName:String, withValue value:AnyObject, forRange range:NSRange? = nil) {
        
        let attributeRange = range ?? self.getRangeOfSelf()
        self.addAttribute(attributeName, value: value, range: attributeRange)
    }
    
}
