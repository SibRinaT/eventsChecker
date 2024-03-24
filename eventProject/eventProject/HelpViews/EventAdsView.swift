//
//  eventAds.swift
//  eventProject
//
//  Created by Ainur on 21.03.2024.
//

import SwiftUI

struct EventAdsView: View {
    @State var image1: String
    @State var image2: String
    @State var image3: String
    @State var image4: String

    @State var adText1: String
    @State var adText2: String
    @State var adText3: String
    @State var adText4: String

    var body: some View {
        
        
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack() {
                VStack {
                    Rectangle()
                        .overlay(
                            VStack {
                                Image(image1)
                                    .scaledToFit()
                            }
                        )
                        .cornerRadius(10)
                        .frame(width: 166, height: 100)
                    Text(adText1)
                        .foregroundColor(.black)
                        .bold()
                }
                VStack {
                    Rectangle()
                        .overlay(
                            VStack {
                                Image(image2)
                                    .scaledToFit()
                            }
                        )
                        .cornerRadius(10)
                        .frame(width: 166, height: 100)
                    Text(adText2)
                        .foregroundColor(.black)
                        .bold()
                }
                VStack {
                    Rectangle()
                        .overlay(
                            VStack {
                                Image(image3)
                                    .scaledToFit()
                            }
                        )
                        .cornerRadius(10)
                        .frame(width: 166, height: 100)
                    Text(adText3)
                        .foregroundColor(.black)
                        .bold()
                }
                VStack {
                    Rectangle()
                        .overlay(
                            VStack {
                                Image(image4)
                                    .scaledToFit()
                            }
                        )
                        .cornerRadius(10)
                        .frame(width: 166, height: 100)
                    Text(adText4)
                        .foregroundColor(.black)
                        .bold()
                }
            }
            .padding()
        }
    }
}

#Preview {
    EventAdsView(image1: "", image2: "", image3: "", image4: "", adText1: "", adText2: "", adText3: "", adText4: "")
}
