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
      
      var body: some View {
          Map(coordinateRegion: $region)
              .frame(height: 300)
          
          
      }
}

#Preview {
    MapView()
}
