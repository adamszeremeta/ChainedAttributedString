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
  func textColor(value:UIColor, forText text:String? = nil) -> NSMutableAttributedString {
    
    var attributeRange:NSRange? = nil
    if let textForAttribute = text {
      
      attributeRange = self.getRangeOfStringInSelf(value: textForAttribute)
    }
    
    self.applyAttribute(attributeName: NSForegroundColorAttributeName, withValue: value, forRange: attributeRange)
    
    return self
  }
  
  /**
   This function adds font attribute to attributed string.
   
   - warning: If text passed in "text" parameter is not found, attribute will be applied to whole attributed string. Only first occurence of "text" is styled.
   
   - parameter value - UIFont which should be applied as font for attributed string
   - parameter text - String for which should be applied font (optional, default = whole attributed string)
   
   - returns: Modified NSMutableAttributedString
   */
  func font(value:UIFont, forText text:String? = nil) -> NSMutableAttributedString {
    
    var attributeRange:NSRange? = nil
    if let textForAttribute = text {
      
      attributeRange = self.getRangeOfStringInSelf(value: textForAttribute)
    }
    
    self.applyAttribute(attributeName: NSFontAttributeName, withValue: value, forRange: attributeRange)
    
    return self
  }
  
  /**
   This function adds background color attribute to attributed string.
   
   - warning: If text passed in "text" parameter is not found, attribute will be applied to whole attributed string. Only first occurence of "text" is styled.
   
   - parameter value - UIColor which should be applied as background color for attributed string
   - parameter text - String for which should be applied font (optional, default = whole attributed string)
   
   - returns: Modified NSMutableAttributedString
   */
  func backgroundColor(value:UIColor, forText text:String? = nil) -> NSMutableAttributedString {
    
    var attributeRange:NSRange? = nil
    if let textForAttribute = text {
      
      attributeRange = self.getRangeOfStringInSelf(value: textForAttribute)
    }
    
    self.applyAttribute(attributeName: NSBackgroundColorAttributeName, withValue: value, forRange: attributeRange)
    
    return self
  }
  
  /**
   This function adds kern spacing attribute to attributed string.
   
   - warning: If text passed in "text" parameter is not found, attribute will be applied to whole attributed string. Only first occurence of "text" is styled.
   
   - parameter value - CGFloat which should be applied as kern spacing for attributed string
   - parameter text - String for which should be applied font (optional, default = whole attributed string)
   
   - returns: Modified NSMutableAttributedString
   */
  func kernSpacing(value:CGFloat, forText text:String? = nil) -> NSMutableAttributedString {
    
    var attributeRange:NSRange? = nil
    if let textForAttribute = text {
      
      attributeRange = self.getRangeOfStringInSelf(value: textForAttribute)
    }
    
    self.applyAttribute(attributeName: NSKernAttributeName, withValue: value as AnyObject, forRange: attributeRange)
    
    return self
  }
  
  /**
   This function adds underline attribute to attributed string.
   
   - warning: If text passed in "text" parameter is not found, attribute will be applied to whole attributed string. Only first occurence of "text" is styled.
   
   - parameter value - CGFloat which should be applied as underline for attributed string
   - parameter text - String for which should be applied font (optional, default = whole attributed string)
   
   - returns: Modified NSMutableAttributedString
   */
  func underline(value:CGFloat, forText text:String? = nil) -> NSMutableAttributedString {
    
    var attributeRange:NSRange? = nil
    if let textForAttribute = text {
      
      attributeRange = self.getRangeOfStringInSelf(value: textForAttribute)
    }
    
    self.applyAttribute(attributeName: NSUnderlineStyleAttributeName, withValue: value as AnyObject, forRange: attributeRange)
    
    return self
  }
  
  /**
   This function adds underline color attribute to attributed string.
   
   - warning: If text passed in "text" parameter is not found, attribute will be applied to whole attributed string. Only first occurence of "text" is styled.
   
   - parameter value - UIColor which should be applied as underline color for attributed string
   - parameter text - String for which should be applied font (optional, default = whole attributed string)
   
   - returns: Modified NSMutableAttributedString
   */
  func underlineColor(value:UIColor, forText text:String? = nil) -> NSMutableAttributedString {
    
    var attributeRange:NSRange? = nil
    if let textForAttribute = text {
      
      attributeRange = self.getRangeOfStringInSelf(value: textForAttribute)
    }
    
    self.applyAttribute(attributeName: NSUnderlineColorAttributeName, withValue: value, forRange: attributeRange)
    
    return self
  }
  
  /**
   This function adds strike through attribute to attributed string.
   
   - warning: If text passed in "text" parameter is not found, attribute will be applied to whole attributed string. Only first occurence of "text" is styled.
   
   - parameter value - CGFloat which should be applied as strike through for attributed string
   - parameter text - String for which should be applied font (optional, default = whole attributed string)
   
   - returns: Modified NSMutableAttributedString
   */
  func strikeThrough(value:CGFloat, forText text:String? = nil) -> NSMutableAttributedString {
    
    var attributeRange:NSRange? = nil
    if let textForAttribute = text {
      
      attributeRange = self.getRangeOfStringInSelf(value: textForAttribute)
    }
    
    self.applyAttribute(attributeName: NSStrikethroughStyleAttributeName, withValue: value as AnyObject, forRange: attributeRange)
    
    return self
  }
  
  /**
   This function adds strike through color attribute to attributed string.
   
   - warning: If text passed in "text" parameter is not found, attribute will be applied to whole attributed string. Only first occurence of "text" is styled.
   
   - parameter value - UIColor which should be applied as strike through color for attributed string
   - parameter text - String for which should be applied font (optional, default = whole attributed string)
   
   - returns: Modified NSMutableAttributedString
   */
  func strikeThroughColor(value:UIColor, forText text:String? = nil) -> NSMutableAttributedString {
    
    var attributeRange:NSRange? = nil
    if let textForAttribute = text {
      
      attributeRange = self.getRangeOfStringInSelf(value: textForAttribute)
    }
    
    self.applyAttribute(attributeName: NSStrikethroughColorAttributeName, withValue: value, forRange: attributeRange)
    
    return self
  }
  
  /**
   This function adds link attribute to attributed string.
   
   - warning: If text passed in "text" parameter is not found, attribute will be applied to whole attributed string. Only first occurence of "text" is styled.
   
   - parameter value - UIColor which should be applied as link for attributed string
   - parameter text - String for which should be applied font (optional, default = whole attributed string)
   
   - returns: Modified NSMutableAttributedString
   */
  func link(value:String, forText text:String? = nil) -> NSMutableAttributedString {
    
    var attributeRange:NSRange? = nil
    if let textForAttribute = text {
      
      attributeRange = self.getRangeOfStringInSelf(value: textForAttribute)
    }
    
    self.applyAttribute(attributeName: NSLinkAttributeName, withValue: value as AnyObject, forRange: attributeRange)
    
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
    
    let range = (self.string as NSString).range(of: value)
    return range.location == NSNotFound ? nil : range
  }
  
  // MARK: Applying attributes
  
  private func applyAttribute(attributeName:String, withValue value:AnyObject, forRange range:NSRange? = nil) {
    
    let attributeRange = range ?? self.getRangeOfSelf()
    self.addAttribute(attributeName, value: value, range: attributeRange)
  }
  
}
