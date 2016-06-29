//
//  String+NSMutableAttributedString.swift
//  Pods
//
//  Created by Adam Szeremeta on 29.06.2016.
//
//

import Foundation

public extension String {
    
    /**
        This function create NSMutableAttributedString from String object
     
        - returns: Created NSMutableAttributedString with content of String
     */
    func attributedString() -> NSMutableAttributedString {
        
        return NSMutableAttributedString(string: self)
    }
}