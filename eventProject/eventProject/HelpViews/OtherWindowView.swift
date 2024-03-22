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
                .foregroundColor(Color(.gray))
                .cornerRadius(15)
                .opacity(0.25)
                .overlay (
                    VStack(alignment:.leading){
                        Image(icon)
                            .foregroundColor(.white)
                        Text(title)
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                        Text(text)
                            .font(.caption)
                            .foregroundColor(.white)
                        
                    }
                )
        }
    }
}

#Preview {
    OtherWindowView(icon: "mapIcon", title: "Список мероприятий", text: "Найдите подходящее для вас и вашей семьи мероприятие")
}
