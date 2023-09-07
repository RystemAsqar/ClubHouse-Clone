//
//  EventData.swift
//  ClubHouse-Clone
//
//  Created by Rystem Asqar on 9/7/23.
//

import Foundation

struct Event: Identifiable {
    var id: String = UUID().uuidString
    var eventName: String
    var time: String
    var roomName: String
    
    static let data: [Event] = [
        Event(eventName: "#13 english_japanese with my friend", time: "17:30", roomName: "Lingo Lounge"),
        Event(eventName: "I read The History of Venice 🇮🇹", time: "17:30", roomName: "Lingo Lounge"),
        Event(eventName: "The French cafe", time: "18:00", roomName: "Lingo Lounge")
    ]
}
