//
//  TabBarView.swift
//  eventProject
//
//  Created by Ainur on 20.03.2024.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            NavigationView {
                HomeView()
            }
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
        }
    }
}

#Preview {
    TabBarView()
}
