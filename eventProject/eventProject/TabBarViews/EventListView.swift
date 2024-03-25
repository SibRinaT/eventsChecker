//
//  eventListView.swift
//  eventProject
//
//  Created by Ainur on 24.03.2024.
//

import SwiftUI

struct EventListView: View {
    let items: [Item] = MockData.events

    var body: some View {
        NavigationLink(destination: MapView()) {
            Text("г. Альметьевск")
                .foregroundColor(Color("blackColor"))
        }
        NavigationView {
                    List(items) { item in
                        HStack {
                            Image(item.imageName)
                                .resizable()
                                .frame(width: 150, height: 100)
                                .aspectRatio(contentMode: .fit)
                            VStack(alignment: .leading) {
                                Text(item.mainText)
                                    .font(.subheadline)
                                Text(item.smallText)
                                    .font(.caption2)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    .navigationTitle("Мероприятия")
        }
//        .background(Color("whiteColor"))
    }
}

#Preview {
    EventListView()
}
