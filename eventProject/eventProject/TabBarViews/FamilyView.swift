//
//  FamilyView.swift
//  eventProject
//
//  Created by Ainur on 24.03.2024.
//
import SwiftUI

struct FamilyView: View {
    var body: some View {
        ZStack {
            Color("whiteColor") // Закрашиваем весь фон в определенный цвет
            
            VStack {
                Text("Моя семья")
                    .bold()
                    .font(.title)
                
                Rectangle()
                    .cornerRadius(50)
                    .frame(height: 100)
                    .foregroundColor(Color("orangeColor"))
                    .overlay(
                        HStack {
                            Image("")
                            Text("Айнур Сибгатов,")
                            Text("Возраст: 12")
                        }
                            .bold()
                            .font(.title3)
                    )
                
                Rectangle()
                    .cornerRadius(50)
                    .frame(height: 100)
                    .foregroundColor(Color("orangeColor"))
                    .overlay(
                        HStack {
                            Image("")
                            Text("Алина Сабирова,")
                            Text("Возраст: 18")
                        }
                            .bold()
                            .font(.title3)
                    )
                Rectangle()
                    .cornerRadius(50)
                    .frame(height: 100)
                    .foregroundColor(Color("orangeColor"))
                    .overlay(
                        HStack {
                            Image("")
                            Text("Пиянзин Никита,")
                            Text("Возраст: 16")
                        }
                            .bold()
                            .font(.title3)
                    )
                Rectangle()
                    .cornerRadius(50)
                    .frame(height: 100)
                    .foregroundColor(Color("blackColor"))
                    .overlay {
                        HStack {
                            Text("+")
                                .foregroundColor(Color(.white))
                                .font(.largeTitle)
                                .bold()
                            Text("Добавить члена семьи")
                                .foregroundColor(Color(.white))
                                .font(.title2)
                                .bold()
                        }
                    }
                Text("В вашей семье : 3 человека")
                    .bold()
                    .font(.title3)
            }
            .padding(.horizontal)
        }
    }
}

struct FamilyView_Previews: PreviewProvider {
    static var previews: some View {
        FamilyView()
    }
}
