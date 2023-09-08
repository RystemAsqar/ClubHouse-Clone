//
//  FollowersView.swift
//  ClubHouse-Clone
//
//  Created by Rystem Asqar on 9/8/23.
//

import SwiftUI

struct FollowersView: View {
    var title: String
    var range: ClosedRange<Int>
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .opacity(0.8)
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 70)), GridItem(.adaptive(minimum: 70)), GridItem(.adaptive(minimum: 70)), GridItem(.adaptive(minimum: 70))]) {
                ForEach(range.lowerBound ..< range.upperBound) { i in
                    UserCell(index: i)
                }
            }
        }.padding()
    }
}

struct FollowersView_Previews: PreviewProvider {
    static var previews: some View {
        FollowersView(title: "title", range: 1...4)
    }
}
