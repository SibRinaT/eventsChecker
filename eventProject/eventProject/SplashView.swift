//
//  SplashView.swift
//  eventProject
//
//  Created by Ainur on 20.03.2024.
//

import SwiftUI

struct SplashView: View {
    @State private var isActive = false
    @State private var opacity = 0.5
    @State private var size = 0.2

    var body: some View {
        NavigationView {
            if isActive {
                ContentView()
            } else {
                VStack {
                    VStack {
                        Image("familyTogetherIcon")
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear() {
                        withAnimation(.easeIn(duration: 1.2)) {
                            self.size = 0.4
                            self.opacity = 1.0
                        }
                    }
                }
                .onAppear() {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation() {
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SplashView()
}
