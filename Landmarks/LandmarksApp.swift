//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Peter Absolon on 03.06.2022.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
