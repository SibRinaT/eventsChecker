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
            EventAdsView(image1: "ad1", image2: "ad2", image3: "ad3", image4: "ad4", adText1: "Уроки вышивания", adText2: "Кружок для детей", adText3: "Концерт", adText4: "День саморазвития")
            
            VStack {
                HStack {
                    NavigationLink(destination: testView()) {
                        OtherWindowView(icon: "eventIcon", title: "Список мероприятий", text: "Найдите подходящее для вас и вашей семьи мероприятие")
                    }
                    NavigationLink(destination: testView()) {
                        OtherWindowView(icon: "mapIcon", title: "Геолокация", text: "Настройте мероприятия для места где вы находитесь")
                    }
                }
                HStack {
                    NavigationLink(destination: testView()) {
                        OtherWindowView(icon: "familyIcon", title: "Моя семья", text: "Записывайтесь и следите за мероприятими на которые идут ваши члены семьи")
                    }
                    NavigationLink(destination: testView()) {
                        OtherWindowView(icon: "supportIcon", title: "ТехПоддержка", text: "Задайте вопрос на который мы найдём ответ!")
                    }                }
            }
            Spacer()
        }
        .background(Color("whiteColor"))
//        .edgesIgnoringSafeArea(.all)
        .padding(.horizontal, 10)
    }
}

#Preview {
    HomeView(user: User.mockUser)
}
