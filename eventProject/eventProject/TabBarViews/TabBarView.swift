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
                HomeView(user: User.mockUser)
            }
            .tabItem {
                Image(systemName: "house")
                    .foregroundColor(Color("blackColor"))
                Text("Home")
                    .foregroundColor(Color("blackColor"))
            }
            NavigationView {
                HomeView(user: User.mockUser)
            }
            .tabItem {
                Image(systemName: "map")
                    .foregroundColor(Color("blackColor"))
                Text("Home")
                    .foregroundColor(Color("blackColor"))
            }
            NavigationView {
                HomeView(user: User.mockUser)
            }
            .tabItem {
                Image(systemName: "figure.2.and.child.holdinghands")
                    .foregroundColor(Color("blackColor"))
                Text("Home")
                    .foregroundColor(Color("blackColor"))
            }
            NavigationView {
                HomeView(user: User.mockUser)
            }
            .tabItem {
                Image(systemName: "questionmark.circle.fill")
                    .foregroundColor(Color("blackColor"))
                Text("Home")
                    .foregroundColor(Color("blackColor"))
            }
            
        
        }
    }
}

#Preview {
    TabBarView()
}
