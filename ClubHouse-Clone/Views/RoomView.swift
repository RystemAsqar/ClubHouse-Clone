//
//  RoomView.swift
//  ClubHouse-Clone
//
//  Created by Rystem Asqar on 9/8/23.
//

import SwiftUI

struct RoomView: View {
    var room: Room
    var body: some View {
        ZStack(alignment: .bottom){
            VStack(alignment: .leading) {
                HeaderView()
                BodyRoomView(room: Room.data[0])
                
            }
            .background(Color("color_background"))
            FooterRoomView()
        }
    }
}

struct HeaderView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        HStack {
            Button{presentationMode.wrappedValue.dismiss()} label: {
                Image(systemName: "chevron.down")
                Text("All rooms")
            }.foregroundColor(Color("color_black"))
            Spacer()
            Image("doc")
                .padding(.trailing, 20)
            Image("xs")
        }.padding()
    }
}
struct BodyRoomView: View {
    var room: Room
    var body: some View {
        ScrollView {
            VStack {
                TitleView(room: Room.data[0])
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 70)), GridItem(.adaptive(minimum: 70)), GridItem(.adaptive(minimum: 70))]) {
                    ForEach(1 ..< 10) { i in
                        UserCell(index: i, isLarge: true)
                    }
                }
                FollowersView(title: "Followed by the speakers", range: 10...15)
                FollowersView(title: "Others in the room", range: 15...23)
            }
            .padding().padding(.bottom, 72)
        }
        .background(Color.white)
        .cornerRadius(32)
    }
}

struct FooterRoomView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                Rectangle()
                    .frame(height: 70)
                    .foregroundColor(Color("color_white"))
                HStack{
                    Button{presentationMode.wrappedValue.dismiss()}label: {
                        ZStack {
                            Rectangle()
                                .fill(Color.black.opacity(0.06))
                                .frame(width: 160, height: 40)
                                .cornerRadius(20)
                            Text("✌🏼Leave quitely")
                        }
                        
                    }.foregroundColor(Color("color_red"))
                    Spacer()
                    Button{} label: {
                        ZStack {
                            Circle()
                                .fill(Color.black.opacity(0.06))
                                .frame(width: 40)
                            Image("plus plus")
                        }
                    }
                    Button{} label: {
                        ZStack {
                            Circle()
                                .fill(Color.black.opacity(0.06))
                                .frame(width: 40)
                            Image("hand")
                        }
                    }
                }.padding()
            }.background(.white)
        }
    }
}

struct TitleView: View {
    var room: Room
    var body: some View {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    if let clubName = room.club {
                        HStack {
                            Text(clubName)
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
                Spacer()
                Button(action: {}, label: {
                    Text("•••")
                        .font(.system(size: 14))
                        .bold()
                })
            }.padding()
    }
}

struct RoomView_Previews: PreviewProvider {
    static var previews: some View {
        RoomView(room: Room.data[0])
    }
}
