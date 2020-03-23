//
//  ViewController.swift
//  Swizzer_2_8
//
//  Created by Лаура Есаян on 20.03.2020.
//  Copyright © 2020 LY. All rights reserved.
//

import UIKit
import ObjectiveC

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let myView = UIView()
        myView.identifier = "Some identifier"
        print(myView.identifier)

    }

    @IBAction func perform(_ sender: Any) {
        performSegueWithIdentifier(identifier: "First", sender: nil) { (segue) in
            let firstView = segue.destination as! FirstViewController
            firstView.importantVar += 1
        }
    }
}

private var AssociatedObject: UInt8 = 0

extension UIView {
    @IBInspectable var identifier: String {
        get {
            return objc_getAssociatedObject(self, &AssociatedObject) as! String
        }
        set {
            objc_setAssociatedObject(self, &AssociatedObject, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}

