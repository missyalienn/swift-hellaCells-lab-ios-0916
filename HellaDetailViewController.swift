//
//  HellaDetailViewController.swift
//  HellaCells
//
//  Created by Missy Allan on 10/9/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaDetailViewController: UIViewController {
    

    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    var number: String?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        if let number = number {
       self.numberLabel.text = number
    }




}



}
