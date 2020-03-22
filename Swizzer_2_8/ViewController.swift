//
//  ViewController.swift
//  Swizzer_2_8
//
//  Created by Лаура Есаян on 20.03.2020.
//  Copyright © 2020 LY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func perform(_ sender: Any) {
        performSegueWithIdentifier(identifier: "First", sender: nil) { (segue) in
            let firstView = segue.destination as! FirstViewController
            firstView.importantVar += 1
        }
    }
}

