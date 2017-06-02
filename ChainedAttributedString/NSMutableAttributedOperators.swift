//
//  NSMutableAttributedOperators.swift
//  Example
//
//  Created by Adam Szeremeta on 03.07.2016.
//  Copyright © 2016 Example. All rights reserved.
//

import Foundation

public func +(left:NSMutableAttributedString, right:NSMutableAttributedString) -> NSMutableAttributedString {
  
  let resultString = left
  left.append(right)
  
  return resultString
}
