//
//  BotResponse.swift
//  ChatTest
//
//  Created by Federico on 20/11/2021.
//

import Foundation


func getBotResponse(message: String) -> String {
    let tempMessage = message.lowercased()
    
    if tempMessage.contains("hello") || tempMessage.contains("hey") || tempMessage.contains("hi") || tempMessage.contains("howdy") {
        return "Hey Maral!"
    } else if tempMessage.contains("goodbye") || tempMessage.contains("bye") || tempMessage.contains("ciao") || tempMessage.contains("bye bye") || tempMessage.contains("bye-bye") {
        return "Talk to you later Maral!"
    } else if tempMessage.contains("how are you") {
        return "I'm fine, how about you Maral?"
    } else if tempMessage.contains("how is it going") || tempMessage.contains("what's up") || tempMessage.contains("what is up"){
        return "Pretty well! Thank you for asking!"
    }
    else {
        return "That's cool."
    }
}

// getting the name from the user
func getBotResponseName(message: String) -> String {
    var tempMessage = message.lowercased()
    if(tempMessage.contains("my name is")){
        tempMessage = tempMessage.replacingOccurrences(of: "my name is ", with: "")
    }
    if(tempMessage.contains("i am")){
        tempMessage = tempMessage.replacingOccurrences(of: "i am ", with: "")
    }
    if(tempMessage.contains("i'm")){
        tempMessage = tempMessage.replacingOccurrences(of: "i'm ", with: "")
    }
    if(tempMessage.contains("im")){
        tempMessage = tempMessage.replacingOccurrences(of: "im ", with: "")
    }
    return "Hello \(tempMessage)! It's my pleasure to meet you."
}
