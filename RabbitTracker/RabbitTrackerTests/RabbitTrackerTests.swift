//
//  RabbitTrackerTests.swift
//  RabbitTrackerTests
//
//  Created by cdsm on 04/04/2017.
//  Copyright © 2017 com.schneppd.lab. All rights reserved.
//

import XCTest
@testable import RabbitTracker

class RabbitTrackerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    //MARK: Meal Class Tests
    
    
    // Confirm that the Meal initializer returns a Meal object when passed valid parameters.
    func testRabbitInitializationSucceeds() {
        
        
        // Zero rating
        let zeroRatingRabbit = Rabbit.init(name: "Amercian", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingRabbit)
        
        // Highest positive rating
        let positiveRatingRabbit = Rabbit.init(name: "European", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingRabbit)
        
        

        

    }
    
    
    
    // Confirm that the Meal initialier returns nil when passed a negative rating or an empty name.
    func testMealInitializationFails() {
        
        
        // Negative rating
        let negativeRatingRabbit = Rabbit.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingRabbit)
        
        
        
        // Rating exceeds maximum
        let largeRatingRabbit = Rabbit.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingRabbit)
        

        
        // Empty String
        let emptyStringRabbit = Rabbit.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringRabbit)
        

    }
    

    

    
}
