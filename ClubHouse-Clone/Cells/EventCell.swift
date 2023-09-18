//
//  EventCell.swift
//  ClubHouse-Clone
//
//  Created by Rystem Asqar on 9/7/23.
//

import SwiftUI

struct EventCell: View {
    var event: Event
    var body: some View {
        HStack(spacing: 12) {
            Text(event.time)
                .bold()
                .font(.system(size: 14))
                .foregroundColor(Color("color_accent"))
            VStack(alignment: .leading) {
                HStack {
                    Text(event.roomName)
                        .textCase(.uppercase)
                        .bold()
                        .font(.system(size: 10))
                    Image("home")
                }
                Text(event.eventName)
                    .bold()
                    .font(.system(size: 15))
            }
        }
    }
}
struct EventCell_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(Event.data) { event in
            EventCell(event: event)
        }
    }
}
