//
//  ViewController.swift
//  SaveDataUserdefaults
//
//  Created by tham gia huy on 6/13/18.
//  Copyright © 2018 tham gia huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let data = UserDefaults.standard.object(forKey: "data") {
            inputTextField.text = String(describing: data)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveData(_ sender: UIBarButtonItem) {
        UserDefaults.standard.removeObject(forKey: "data")
        if inputTextField.text != "" {
            UserDefaults.standard.set(inputTextField.text, forKey: "data")
            print("Saved")
        }
    }
}

