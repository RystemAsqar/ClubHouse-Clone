//
//  ContentView.swift
//  ClubHouse-Clone
//
//  Created by Rystem Asqar on 9/7/23.
//

import SwiftUI

struct ContentView: View {
    @State var selectedRoom: Room? = .none
    var body: some View {
        NavigationView {
            ZStack {
                VStack{
                    HomeNavigationView()
                    BodyView(selectedRoom: $selectedRoom)
                    Spacer()
                }
                .background(Color("color_background"))
                FooterView()
            }
            .fullScreenCover(item: $selectedRoom) { room in
                RoomView(room: room)
            }
        }
    }
}
struct HomeNavigationView: View {
    var body: some View {
        HStack {
            Button {} label: {Image("search")}
            Spacer()
            Button {} label: {Image("invite")}
            Button {} label: {Image("calendar")}
            Button {} label: {Image("notification")}
            NavigationLink {
                ProfileView()
            } label: {
                Image("xs")
                    .padding(.trailing)
            }
        }
        .padding()
        .background(.clear)
    }
}

struct BodyView: View {
    @Binding var selectedRoom: Room?
    var body: some View {
        ScrollView {
            EventView()
                .padding(.bottom, 20)
            RoomCellView(selectedRoom: $selectedRoom)
        }
    }
}

struct EventView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(Event.data) { event in
                EventCell(event: event)
            }
        }
        .padding()
        .background(Color("color_dim_brown"))
        .cornerRadius(25.0)
    }
}

struct RoomCellView: View {
    @Binding var selectedRoom: Room?
    var body: some View {
        VStack {
            ForEach(Room.data) { room in
                RoomCell(room: room)
                    .onTapGesture {
                        selectedRoom = room
                    }
                    .padding(.bottom)
            }
        }
        .padding(.bottom, 72)
    }
}

struct FooterView: View {
    let color1 = Color(UIColor(red: 241, green: 239, blue: 229, alpha: 1))
    let color2 = Color(UIColor(red: 241, green: 239, blue: 229, alpha: 0))
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                Rectangle()
                    .overlay(LinearGradient.home)
                    .frame(height: 80)
                    .foregroundColor(Color("color_background"))
                    .blur(radius: 20).offset(y: 6.0)
                HStack {
                    Button(action: {}, label: {
                        Text("+ Start a room")
                    })
                    .font(.system(size: 20))
                    .foregroundColor(Color("color_white"))
                    .padding(.vertical,8).padding(.horizontal)
                    .background(Color("color_green"))
                    .cornerRadius(30)
                    .padding(.bottom, 18)
                    .padding(.trailing, 60)
                    Button {} label: {
                        Image("menu")
                            .padding(.bottom, 18)
                    }
                }
            }.ignoresSafeArea(.all)
        }
    }
}
extension LinearGradient {
    static let home = LinearGradient(gradient: Gradient(colors: [Color("color_background").opacity(0.4), Color("color_background")]),startPoint: .top,endPoint: .bottom)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

