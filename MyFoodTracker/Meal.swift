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
        
        // Initializer should fail if there is no name or if the rating is negative.
        
        if name.isEmpty || rating < 0 {
            return nil
        }
        
        // Initializes stored properties.
        
        self.name = name
        self.rating = rating
        self.photo = photo
    }
}
