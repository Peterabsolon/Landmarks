//
//  Landmark.swift
//  Landmarks
//
//  Created by Peter Absolon on 04.07.2022.
//

import CoreLocation
import Foundation
import SwiftUI

struct Landmark: Hashable, Codable, Identifiable {
  // ===================================================
  // Base data
  // ===================================================
  var id: Int
  var name: String
  var park: String
  var state: String
  var description: String
  var isFavorite: Bool

  // ===================================================
  // Image
  // ===================================================
  private var imageName: String
  var image: Image {
    Image(imageName)
  }

  // ===================================================
  // Map coordinates
  // ===================================================
  struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
  }

  private var coordinates: Coordinates

  var locationCoordinate: CLLocationCoordinate2D {
    CLLocationCoordinate2D(
      latitude: coordinates.latitude,
      longitude: coordinates.longitude
    )
  }
}
