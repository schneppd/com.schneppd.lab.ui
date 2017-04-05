//
//  Rabbit.swift
//  RabbitTracker
//
//  Created by cdsm on 05/04/2017.
//  Copyright © 2017 com.schneppd.lab. All rights reserved.
//

import UIKit



class Rabbit {
    
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    
    
    //MARK: Initialization
    
    init?(name: String, photo: UIImage?, rating: Int) {
        
        
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        // The rating must be between 0 and 5 inclusively
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        

        

        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
        

    }
    

    
}


