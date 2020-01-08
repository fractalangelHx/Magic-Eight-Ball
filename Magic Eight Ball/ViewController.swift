//
//  ViewController.swift
//  Magic Eight Ball
//
//  Created by Mariam Fuzail on 12/10/19.
//  Copyright © 2019 Mariam Fuzail. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var answerArray = ["POSSIBLY", "YUP", "NOPE", "ASK IN 7 MINUTES", "MAYBE LATER", "IDK", "MAYBE", "YES", "NOT AT ALL", "I GUESS", "AS YOU WISH", "IT IS SO", "HAHAHAHA", "SURE", "DON'T COUNT ON IT", "CONCENTRATE AND ASK AGAIN", "MY REPLY IS NO", "MY REPLY IS YES", "IT IS NOT ADVISED", "IT IS ADVISED"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            segueToSecondVC()
        }
    }
    
    @IBAction func onButtonTapped(_ sender: UIButton) {
        segueToSecondVC()
    }
    
    func segueToSecondVC(){
        performSegue(withIdentifier: "FirstToSecondSegue", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! SecondViewController
        dvc.answer = answerArray.randomElement()!
    }
}


