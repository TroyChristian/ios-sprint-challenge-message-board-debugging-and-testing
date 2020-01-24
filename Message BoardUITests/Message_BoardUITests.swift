//
//  Message_BoardUITests.swift
//  Message BoardUITests
//
//  Created by Spencer Curtis on 9/14/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest

class Message_BoardUITests: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        app = XCUIApplication()
        
        // NOTE: Keep this setup as is for UI Testing
        app.launchArguments = ["UITesting"]
        app.launch()
    }
    
    func testTableViewThreadCreation() {
        let textField = app.textFields["MessageThreadsTableViewController.TextField"]
        //XCTAssert(textField.exists)
        textField.tap()
        textField.typeText("SwiftR0x")
        app.keyboards.buttons["Return"].tap()
        
        let newTableEntry = app.tables.staticTexts["SwiftR0x"]
        XCTAssertTrue(newTableEntry.exists)
    }
    
    func testCreateAMessage() {
        let textField = app.textFields["MessageThreadsTableViewController.TextField"]
        //XCTAssert(textField.exists)
        textField.tap()
        textField.typeText("SwiftR0x")
        app.keyboards.buttons["Return"].tap()

        let newTableEntry = app.tables.staticTexts["SwiftR0x"]
        XCTAssertTrue(newTableEntry.exists)

        newTableEntry.tap()
        
//        app.navigationBars["SwiftR0x"].buttons["MessageThreadDetailTableViewController.AddNewMessageButton"].tap()
        
        let createNewMessage = app.navigationBars["SwiftR0x"].buttons["MessageThreadDetailTableViewController.AddNewMessageButton"]
        
        createNewMessage.tap()
        
        
        
        XCTAssert(app.navigationBars["New Message"].exists)
        
        let messageDetailTextField = app.textFields["MessageDetailViewController.TextField"]
        XCTAssert(messageDetailTextField.exists)
        
        let messageDetailTextView = app.textViews["MessageDetailViewController.TextView"]
        XCTAssert(messageDetailTextView.exists)
        
        let addButton = app.navigationBars["New Message"].buttons["Add"]
        XCTAssert(addButton.exists)
        
        addButton.tap()

    }
    
}
