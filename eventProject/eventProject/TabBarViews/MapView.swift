//
//  mapView.swift
//  eventProject
//
//  Created by Ainur on 24.03.2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
          center: CLLocationCoordinate2D(latitude: 54.9044, longitude: 52.3154),
          span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
      )
      
    @State private var showingLocationAlert = false

      var body: some View {
          VStack {
              Map(coordinateRegion: $region)
                  .frame(height: 300)
              HStack {
                  Text("Ваше местоположение,")
                      .bold()
                      .font(.headline)
                              Text("Изменить")
                                  .onTapGesture {
                                      self.showingLocationAlert = true
                                  }
                                  .padding()
                          }
              .alert(isPresented: $showingLocationAlert) {
                  Alert(
                    title: 
                        Text("Разрешение на использование геолокации")
                        .foregroundColor(Color("orangeColor")),
                    message: Text("Предоставить доступ к вашему местоположению?"),
                    primaryButton: .default(Text("Да")) {
//
                    },
                    secondaryButton: .cancel(Text("Отмена"))
                  )
              }
              Spacer()
              VStack {
                  Text("Что за город?")
                      .font(.title)
                      .multilineTextAlignment(.leading)
                  
                  Text("Описание города Альметьевск: Альме́тьевск — город в Республике Татарстан Российской Федерации. Административный центр Альметьевского района. Образует городское поселение город Альметьевск. Самый крупный город в полицентрической Альметьевско-Бугульминско-Лениногорской агломерации и четвёртый по численности населения город Татарстана, центр Юго-Восточной экономической зоны Татарстана. «Велостолица» России")
                      .multilineTextAlignment(.center)
              }
              Spacer()
          }
          .background(Color("whiteColor"))
//          .edgesIgnoringSafeArea(.all)
      }
    
}

#Preview {
    MapView()
}
