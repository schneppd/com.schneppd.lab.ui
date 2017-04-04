//
//  ViewController.swift
//  RabbitTracker
//
//  Created by cdsm on 04/04/2017.
//  Copyright © 2017 com.schneppd.lab. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //MARK: Properties
    @IBOutlet weak var rabitInput: UITextField!
    
    @IBOutlet weak var rabbitLabel: UILabel!


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // connect to rabitInput to manage text value changes
        rabitInput.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Actions
    @IBAction func ExecuteSetPrefferedRabbitBreed(_ sender: UIButton) {
        rabbitLabel.text = "Default breed"
    }
    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
            rabbitLabel.text = textField.text
    }
    

    



}

