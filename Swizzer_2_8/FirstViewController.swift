//
//  FirstViewController.swift
//  Swizzer_2_8
//
//  Created by Лаура Есаян on 22.03.2020.
//  Copyright © 2020 LY. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var importantVar = Int() {
        didSet {
            if oldValue == 0 {
                print("Called custom performer")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(importantVar)
        imageView.layer.cornerRadius = imageView.frame.width / 2
    }
    
    @IBAction func addImage(_ sender: Any) {
        showPickerController()
    }
    
}

extension FirstViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func showPickerController() {
        let pickerController = UIImagePickerController()
        pickerController.delegate = self
        pickerController.allowsEditing = true
        pickerController.sourceType = .photoLibrary
        present(pickerController, animated: true, completion: nil)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageView.image = image
        } else if let editedImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
            imageView.image = editedImage
        }
        
        dismiss(animated: true, completion: nil)
    }
}

