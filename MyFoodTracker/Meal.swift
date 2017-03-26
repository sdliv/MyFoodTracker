//
//  Meal.swift
//  MyFoodTracker
//
//  Created by Sean Livingston on 3/26/17.
//  Copyright © 2017 Sean Livingston. All rights reserved.
//

import UIKit

class Meal {
    
    //MARK:  Properties
    
    var name: String
    var rating: Int
    var photo: UIImage?
    
    // MARK: Initializers
    
    init?(name: String, rating: Int, photo: UIImage?) {
                
        // Name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        // The rating must be between 0 and 5 inclusively
        
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        // Initializes stored properties.
        
        self.name = name
        self.rating = rating
        self.photo = photo
    }
}
