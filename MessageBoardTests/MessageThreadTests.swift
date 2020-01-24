//
//  MessageThreadTests.swift
//  MessageBoardTests
//
//  Created by Andrew R Madsen on 9/13/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest
@testable import Message_Board

class MessageThreadTests: XCTestCase {
    /*
     @IBAction func createThread(_ sender: Any) {
         threadTitleTextField.resignFirstResponder()

         guard let threadTitle = threadTitleTextField.text else { return }
         
         threadTitleTextField.text = ""
         
         messageThreadController.createMessageThread(with: threadTitle) {
             DispatchQueue.main.async {
                 self.tableView.reloadData()
             }
         }
     }
     */
    
    func testCreatingThread() {
       let messageThreadController = MessageThreadController()
        let fauxNetworking = expectation(description: "NewThread made")
      
        messageThreadController.createMessageThread(with: "NewThread") {
            fauxNetworking.fulfill()
            
        
        
        
    }
        wait(for: [fauxNetworking], timeout: 4)
        XCTAssertTrue(messageThreadController.messageThreads.count > 0)
    
}
    
    
    func testAddMessageToThread() {
        let messageThreadController = MessageThreadController()
        
               let fauxNetworking = expectation(description: "NewThread made")
             
               messageThreadController.createMessageThread(with: "NewThread") {
                   fauxNetworking.fulfill()
                   
               
               
               
           }
               wait(for: [fauxNetworking], timeout: 4)
               XCTAssertTrue(messageThreadController.messageThreads.count > 0)
        
        let currentThread = messageThreadController.messageThreads[0]
        
        let newMessage = expectation(description: "Swift")
        messageThreadController.createMessage(in: currentThread, withText: "Swift", sender: "Troy") {
            newMessage.fulfill()
        }
        
        wait(for: [newMessage], timeout:4)
           
       }
    }

