//
//  ViewController.swift
//  RabbitTracker
//
//  Created by cdsm on 04/04/2017.
//  Copyright © 2017 com.schneppd.lab. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate,UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //MARK: Properties
    @IBOutlet weak var rabitInput: UITextField!
    
    @IBOutlet weak var rabbitLabel: UILabel!
    @IBOutlet weak var rabbitPicture: UIImageView!


    
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
    
    
    
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        
        
        // Hide the keyboard.
        rabitInput.resignFirstResponder()
        
        
        // UIImagePickerController is a view controller that lets a user pick media from their photo library.
        let imagePickerController = UIImagePickerController()
        

        
        
        // Only allow photos to be picked, not taken.
        imagePickerController.sourceType = .photoLibrary
        
        
        // Make sure ViewController is notified when the user picks an image.
        imagePickerController.delegate = self
        
        // show the viwer of imagePickerController
        present(imagePickerController, animated: true, completion: nil)
    }
    
    //MARK: UIImagePickerControllerDelegate
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
        
        // Dismiss the picker if the user canceled.
        dismiss(animated: true, completion: nil)
        

    }
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        
        // The info dictionary may contain multiple representations of the image. You want to use the original.
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        
        
        // Set photoImageView to display the selected image.
        rabbitPicture.image = selectedImage
        
        // Dismiss the picker.
        dismiss(animated: true, completion: nil)
        

        

        

    }
    

    

    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
            rabbitLabel.text = textField.text
    }
    
    @IBAction func ExecuteSelectImageLibrary(_ sender: UITapGestureRecognizer) {
        // Hide the keyboard.
        rabitInput.resignFirstResponder()
        
        
        // UIImagePickerController is a view controller that lets a user pick media from their photo library.
        let imagePickerController = UIImagePickerController()
        
        
        
        
        // Only allow photos to be picked, not taken.
        imagePickerController.sourceType = .photoLibrary
        
        
        // Make sure ViewController is notified when the user picks an image.
        imagePickerController.delegate = self
        
        // show the viwer of imagePickerController
        present(imagePickerController, animated: true, completion: nil)
    }

    



}

