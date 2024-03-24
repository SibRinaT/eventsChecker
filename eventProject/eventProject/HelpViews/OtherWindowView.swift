//
//  OtherWindowView.swift
//  eventProject
//
//  Created by Ainur on 22.03.2024.
//

import SwiftUI

struct OtherWindowView: View {
    @State var icon: String
    @State var title: String
    @State var text: String

    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 169, height: 169)
                .foregroundColor(Color("orangeColor"))
                .cornerRadius(15)
                .opacity(0.25)
                .overlay (
                    VStack(alignment:.leading){
                        Image(icon)
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                        Text(title)
                            .multilineTextAlignment(.leading)
                            .font(.headline)
                            .bold()
                            .foregroundColor(Color("blackColor"))
                        Text(text)
                            .multilineTextAlignment(.leading)
                            .font(.caption)
                            .foregroundColor(Color("blackColor"))
                    }
                        .padding(.horizontal, 5)
                )
        }
    }
}

#Preview {
    OtherWindowView(icon: "mapIcon", title: "Список мероприятий", text: "Найдите подходящее для вас и вашей семьи мероприятие")
}
