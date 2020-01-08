//
//  SecondViewController.swift
//  Magic Eight Ball
//
//  Created by Mariam Fuzail on 12/11/19.
//  Copyright © 2019 Mariam Fuzail. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var answerLabel: UILabel!
    var answer = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        answerLabel.text = answer
    }
}
