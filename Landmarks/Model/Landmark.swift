//
//  Landmark.swift
//  Landmarks
//
//  Created by Peter Absolon on 04.07.2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    // ===================================================
    // Base data
    // ===================================================
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
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
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}

