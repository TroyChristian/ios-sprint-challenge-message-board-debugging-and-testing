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
        
        messageThreadController.createMessageThread(with: "NewThread") {
            
        
        
        
    }
        XCTAssertTrue(messageThreadController.messageThreads.count > 0)
    
}
}
