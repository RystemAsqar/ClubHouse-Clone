//
//  Second.swift
//  JustProfil
//
//  Created by Rustem Askar on 9/8/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack{
            Color(red: 241/255, green: 239/255, blue: 229/255)
                .ignoresSafeArea()
            VStack{
                profile
                info
                social
                last
                Spacer()
            }
        }
    }
    var profile:some View{
        HStack{
            VStack(alignment: .leading){
                Image("l")
                    .resizable()
                    .frame(width: 100,height: 100)
                Text("John Lee")
                    .font(.custom("Nunito", size: 25.0))
                    .padding(.top,10)
                
                Text("@clubhouse")
                    .font(.custom("Nunito", size: 15.0))
                
            }
            
            Spacer()
            
            HStack{
                ZStack {
                    Capsule()
                        .stroke(Color(red: 91/255, green: 117/255, blue: 166/255), lineWidth: 2.6)
                        .background(Capsule().foregroundColor(Color(red: 241/255, green: 239/255, blue: 229/255)))
                        .frame(width: 100, height: 40)
                    
                    Text("Follow")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 91/255, green: 117/255, blue: 166/255))
                }
                  Image("icon")
                    .resizable()
                    .frame(width: 40,height: 40)
                }
        }
        .padding(30)
    }
    
    var info:some View{
        VStack(spacing: 80){
            HStack(spacing: 40){
                Text("99 followers")
                
                Text("99 following")
            }
            .frame(width: UIScreen.main.bounds.size.width,alignment: .leading)
            .padding(.leading,30)
            
            Text("This is your job")
                .frame(width: UIScreen.main.bounds.size.width,alignment: .leading)
                .padding(.leading,30)
        }
    }
    
    var social:some View{
        HStack(spacing: 40){
            HStack{
                Image("twitter")
                    .resizable()
                    .frame(width: 30,height: 30)
                Text("twitter")
                    .fontWeight(.bold)
            }
            HStack{
                Image("instagram")
                    .resizable()
                    .frame(width: 30,height: 30)
                Text("instagram")
                    .fontWeight(.bold)

            }
        }
        .frame(width: UIScreen.main.bounds.size.width,alignment: .leading)
            .padding(.leading,30)
            .padding(.top,50)
        
    }
    
    var last:some View{
        HStack{
            Image("l")
                .resizable()
                .frame(width: 60,height: 60)
            VStack(alignment: .leading,spacing: 5){
                Text("Joined Jan 1, 2021")
                Text("Nominated by Kate")
            }
            
        }
        .frame(width: UIScreen.main.bounds.size.width,alignment: .leading)
        .padding(.leading,30)
        .padding(.top,60)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
