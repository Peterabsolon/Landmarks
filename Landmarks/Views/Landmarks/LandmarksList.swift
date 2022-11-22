//
//  LandmarksList.swift
//  Landmarks
//
//  Created by Peter Absolon on 04.07.2022.
//

import SwiftUI

struct LandmarksList: View {
  // ====================================================
  // Global state
  // ====================================================
  @EnvironmentObject var modelData: ModelData

  // ====================================================
  // State
  // ====================================================
  @State private var showFavoritesOnly = false

  // ====================================================
  // Computed
  // ====================================================
  var landmarks: [Landmark] {
    modelData.landmarks.filter { landmark in
      !showFavoritesOnly || landmark.isFavorite
    }
  }

  // ====================================================
  // View
  // ====================================================
  var body: some View {
    NavigationView {
      List {
        Toggle(isOn: $showFavoritesOnly) {
          Text("Favorites only")
        }

        ForEach(landmarks) { landmark in
          NavigationLink {
            LandmarkDetail(landmark: landmark)
          } label: {
            LandmarkRow(landmark: landmark)
          }
        }
      }
      .navigationTitle("Landmarks")
    }
  }
}

struct LandmarksList_Previews: PreviewProvider {
  static var previews: some View {
    LandmarksList()
      .environmentObject(ModelData())
  }
}
