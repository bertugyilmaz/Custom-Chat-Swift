//
//  Message.swift
//  Custom-Chat
//
//  Created by Bertuğ YILMAZ on 27/07/2017.
//  Copyright © 2017 bertug. All rights reserved.
//

import Foundation


class Message: NSObject {
    
    var message_id : String
    var message : String
    var sender_id : String
    var receiver_id : String
    
    init(message_id : String, message: String, sender_id: String, receiver_id : String) {
        self.message_id = message_id
        self.message = message
        self.sender_id = sender_id
        self.receiver_id = receiver_id
    }
}

let s_message = Message(message_id: "1", message: "Selam", sender_id: "1", receiver_id: "2")
let r_message = Message(message_id: "2", message: "Merhaba", sender_id: "2", receiver_id: "1")
