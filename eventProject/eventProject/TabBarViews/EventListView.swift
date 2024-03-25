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
        }
        .navigationBarTitle(Text("Мероприятия"), displayMode: .inline)
        .background(Color("whiteColor"))
    }
}

#Preview {
    NavigationStack {
        EventListView()
    }
}
