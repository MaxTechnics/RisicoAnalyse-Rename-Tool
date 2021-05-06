//
//  RisicoAnalyse_Rename_ToolTests.swift
//  RisicoAnalyse Rename ToolTests
//
//  Created by Maxim Coppieters on 03/05/2021.
//

import XCTest
@testable import RisicoAnalyse_Rename_Tool

class RisicoAnalyse_Rename_ToolTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    /*func testIncrement() throws {
        AppDelegate().incrementCounter(counter: "Board");
        AppDelegate().updateCounters();
    }*/
    
    func testProgressBar() throws {
//        let app = XCUIApplication()
//        app.launch()
        var testSubject: Int;

        AppDelegate().progressBar?.maxValue = Double(1000);
        AppDelegate().progressBar?.doubleValue = Double(1);
        AppDelegate().progressBar?.controlTint = .graphiteControlTint;
        
        AppDelegate().progressLabel?.stringValue = "Progress: 1/1000";
        for i in 1...1000 {
            testSubject = i;
            AppDelegate().progressBar?.maxValue = Double(1000); //i'm going to die here, watch me
            AppDelegate().progressBar?.doubleValue = Double(i);
            AppDelegate().progressBar?.controlTint = .graphiteControlTint;
            AppDelegate().progressLabel?.stringValue = "Progress: \(testSubject)/1000";
            
        }
    }

}
