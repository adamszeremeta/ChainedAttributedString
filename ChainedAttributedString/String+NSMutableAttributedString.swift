//
//  String+NSMutableAttributedString.swift
//  Pods
//
//  Created by Adam Szeremeta on 29.06.2016.
//
//

import Foundation

public extension String {
    
    func attributedString() -> NSMutableAttributedString {
        
        return NSMutableAttributedString(string: self)
    }
}