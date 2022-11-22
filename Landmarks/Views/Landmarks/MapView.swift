//
//  MapView.swift
//  Landmarks
//
//  Created by Peter Absolon on 04.07.2022.
//

import MapKit
import SwiftUI

struct MapView: View {
  // ====================================================
  // Props
  // ====================================================
  var coordinate: CLLocationCoordinate2D

  // ====================================================
  // State
  // ====================================================
  @State private var region = MKCoordinateRegion()

  // ====================================================
  // Actions
  // ====================================================
  private func setRegion(_ coordinate: CLLocationCoordinate2D) {
    region = MKCoordinateRegion(
      center: coordinate,
      span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
  }

  // ====================================================
  // View
  // ====================================================
  var body: some View {
    Map(coordinateRegion: $region)
      .onAppear {
        setRegion(coordinate)
      }
  }
}

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
  }
}
