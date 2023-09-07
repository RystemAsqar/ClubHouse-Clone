//
//  RoomData.swift
//  ClubHouse-Clone
//
//  Created by Rystem Asqar on 9/7/23.
//

import Foundation

struct Room: Identifiable {
    let id: String = UUID().uuidString
    var club: String? = nil
    var title: String? = nil
    let avatars: [String]
    let names: [String]
    let participantsCount: String
    let speakersCount: String
    
    
    
    
    static let data: [Room] = [
        Room(club: "Team Intent", title: "Solving problems from week2", avatars: ["user-1", "user-2"], names: Array(Names.names[0...4]), participantsCount: "43", speakersCount: "4"),
        Room(title: "Talking how to design ClubHouse in your Figma", avatars: ["user-4", "user-3"], names: Array(Names.names[5...9]), participantsCount: "1.3k", speakersCount: "16"),
        Room(club: "KitapAl📕", title: "Кітап және арман", avatars: ["user-5", "user-6"], names: Array(Names.names[7...11]), participantsCount: "146", speakersCount: "14"),
        Room(title: "Design Dark Theme to ClubHouse. Is it real or not? Why?🤷🏻‍♂️", avatars: ["user-7", "user-8"], names: Array(Names.names[12...15]), participantsCount: "9", speakersCount: "2"),
        Room(club: "SDU Automation🥷🏽", title: "Design Dark Theme to ClubHouse. Is it real or not? Why?", avatars: ["user-10", "user-9"], names: Array(Names.names[15...20]), participantsCount: "26", speakersCount: "4")
    ]
}
