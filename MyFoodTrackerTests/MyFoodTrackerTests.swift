//
//  MyFoodTrackerTests.swift
//  MyFoodTrackerTests
//
//  Created by Sean Livingston on 3/25/17.
//  Copyright © 2017 Sean Livingston. All rights reserved.
//

import XCTest
@testable import MyFoodTracker

class MyFoodTrackerTests: XCTestCase {
    
    //MARK: Meal Class Tests
    
    // Confirm that the Meal initializer returns a Meal object when passed valid parameters.
    
    func testMealInitializationSucceeds() {
        // Zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", rating: 0, photo: nil)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest Possible Rating
        let positiveRatingMeal = Meal.init(name: "Positive", rating: 5, photo: nil)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    // Confirm that the Meal Initializer returns nil when passed a negative rating or empty name.
    
    func testMealInitializationFails() {
        // Negative rating
        let negativeRatingMeal = Meal.init(name: "Negative", rating: -1, photo: nil)
        XCTAssertNil(negativeRatingMeal)
        
        let largeRatingMeal = Meal.init(name: "Large Meal Rating", rating: 6, photo: nil)
        XCTAssertNil(largeRatingMeal)
        
        // Empty Name Meal
        let emptyNameMeal = Meal.init(name: "", rating: 4, photo: nil)
        XCTAssertNil(emptyNameMeal)
        
    }
    
}
