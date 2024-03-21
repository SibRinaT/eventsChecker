//
//  HomeView.swift
//  eventProject
//
//  Created by Ainur on 20.03.2024.
//

import SwiftUI

struct HomeView: View {
    @State var user: User

    var body: some View {
        VStack {
            RectangleProfileHomeView()
                .overlay (
                    HStack {
                        if #available(iOS 15.0, *), let url = user.avatarUrl {
                            AsyncImage(url: URL(string: url))
                                .clipShape(Circle())
                                .frame(width: 60, height: 60)
                                .overlay(RoundedRectangle(cornerRadius: 30).stroke(lineWidth: 1).foregroundColor(Color.white))
                        } else {
                            Image("KaneIcon")

                        }
                        VStack(alignment: .leading) {
                            Text("Привет " + user.first_name + "!")
                                .bold()
                                .font(.title2)
                                .foregroundColor(.white)
                            Text("We trust you are having a great time")
                                .font(.caption2)
                                .foregroundColor(Color(.gray))
                        }
                    }
                )
                .cornerRadius(10)
                .clipped()
            .foregroundColor(Color("MainColor"))
            .frame(height: 91)     
            
            Text("Спец. мероприятия подобранные для вас")
                .bold()
            EventAdsView(image1: "", image2: "", image3: "", image4: "")
        }
    }
}

#Preview {
    HomeView(user: User.mockUser)
}
