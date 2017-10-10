//
//  ViewController.swift
//  DemoTableView
//
//  Created by KuAnh on 07/10/2017.
//  Copyright © 2017 KuAnh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var txtNumber: UITextField!
    var enterNumber: Int?
    var array: [Int]!
    var editedNumber: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        txtNumber.text = "\(array[enterNumber!])"
        txtNumber.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txtNumber.resignFirstResponder()
        return true
    }
    
//    func textFieldDidEndEditing(_ textField: UITextField) {
//        enterNumber = txtNumber.text
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "editNumber" {
            editedNumber = txtNumber.text
        }
    }


}

