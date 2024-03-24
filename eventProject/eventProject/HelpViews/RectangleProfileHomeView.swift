//
//  RectangleProfileHomeView.swift
//  eventProject
//
//  Created by Ainur on 21.03.2024.
//

import SwiftUI

struct RectangleProfileHomeView: View {
    var body: some View {
        Rectangle()
            .overlay (
                HStack {
                    Circle()
                        .foregroundColor(Color("orangeColor"))
                        .position(CGPoint(x: 35.0, y: 120.0))
                        .frame(height: 122)
                    Circle()
                        .foregroundColor(Color("orangeColor"))
                        .position(CGPoint(x: 160.0, y: 10.0))
                        .frame(height: 122)
                }
            )
            .cornerRadius(10)
            .clipped()
            .foregroundColor(Color("orangeColor"))
            .frame(height: 91)
            .padding(.horizontal)
    }
}

#Preview {
    RectangleProfileHomeView()
}
