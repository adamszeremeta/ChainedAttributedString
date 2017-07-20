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

        //join strings
        let one = "Test".attributedString() + "One".attributedString()
        
        //apply attributes
        self.exampleLabel.attributedText = "This sample text shows chained attributes".attributedString()
            .textColor(UIColor.red, forText: "sample")
            .font(UIFont.boldSystemFont(ofSize: 20), forText: "This")
            .kernSpacing(-1, forText: "text")
            .strikeThrough(2, forText: "shows")
            .strikeThroughColor(UIColor.blue)
            .underline(2, forText: "attributes")
            .alignment(.center)
    }

}

