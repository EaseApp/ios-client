//
//  EaseAppTests.swift
//  EaseAppTests
//
//  Created by AGW on 11/15/15.
//  Copyright (c) 2015 Ease. All rights reserved.
//

import UIKit
import XCTest
import EaseApp

class EaseAppTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSendJSONWorks() {
        // This is an example of a functional test case.
        PostService.sendJSON("", token:"", url:"http://google.com", path:"", method:"GET", callback:{
            (response) in
            println("Response: \(response)")
//            XCTAssertEqual("\(res)", "abc", "sendJSON did not work")
        })

        
        
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
