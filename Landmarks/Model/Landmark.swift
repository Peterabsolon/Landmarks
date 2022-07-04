//
//  Landmark.swift
//  Landmarks
//
//  Created by Peter Absolon on 04.07.2022.
//

import Foundation
import SwiftUI
import MapKit

struct Landmark: Hashable, Codable {
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
    private var coodinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coodinates.latitude,
            longitude: coodinates.longitude
        )
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}

