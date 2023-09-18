//
//  RoomCell.swift
//  ClubHouse-Clone
//
//  Created by Rystem Asqar on 9/7/23.
//

import SwiftUI

struct RoomCell: View {
    var room: Room
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                if let club = room.club {
                    HStack {
                        Text(club)
                            .font(.system(size: 12))
                            .bold()
                            .foregroundColor(Color("color_black"))
                        Image("home")
                    }
                }
                if let title = room.title {
                    Text(title)
                        .bold()
                        .font(.system(size: 16))
                }
            }
            
            HStack {
                VStack(alignment:.leading) {
                    ZStack(alignment:.topLeading) {
                        Image(room.avatars[0])
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 35, height: 35)
                            .clipped()
                            .cornerRadius(16)
                        Image(room.avatars[1])
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 35, height: 35)
                            .clipped()
                            .cornerRadius(16)
                            .offset(x: 20, y: 22)
                    }
                    .padding(.leading, -8)
                    Spacer()
                    
                }
                .frame(width: 70)
                
                
                VStack(alignment:.leading) {
                    ForEach(room.names, id: \.self) { name in
                        Text("\(name) 💬")
                            .font(.system(size: 16))
                    }
                    HStack {
                        HStack(spacing:4) {
                            Text(room.participantsCount)
                            Image("user").resizable().frame(width: 10, height: 12).offset(y: -1)
                        }
                        Text("/")
                        HStack(spacing:4) {
                            Text(room.speakersCount)
                            Image("somment one tone").resizable().frame(width: 12, height: 12).offset(y: -1)
                        }
                    }
                    .font(.system(size: 14))
                    .bold()
                    .foregroundColor(.gray)
                }
                Spacer()
            }
        }
        .padding().padding(.vertical, 8)
        .background(Color("color_white"))
        .cornerRadius(25.0)
        .shadow(color: Color.black.opacity(0.2), radius: 1, y: 1)
        .padding(.horizontal)
        }
    }


struct RoomCell_Previews: PreviewProvider {
    static var previews: some View {
        RoomCell(room: Room(club: "Team Intent", title: "Solving problems from week2", avatars: ["user-1", "user-2"], names: Array(Names.names[0...4]), participantsCount: "43", speakersCount: "4"))
    }
}
