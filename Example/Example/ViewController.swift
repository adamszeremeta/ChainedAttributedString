//
//  ViewController.swift
//  Example
//
//  Created by Adam Szeremeta on 29.06.2016.
//  Copyright © 2016 Example. All rights reserved.
//

import UIKit
import ChainedAttributedString

class ViewController: UIViewController {

    @IBOutlet weak var exampleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.exampleLabel.attributedText = "This is sample text".attributedString().textColor(UIColor.redColor(), forText: "sample").clearAllAttributes()
        
    }

}

