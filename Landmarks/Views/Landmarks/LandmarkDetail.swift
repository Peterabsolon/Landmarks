//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Peter Absolon on 04.07.2022.
//

import SwiftUI

struct LandmarkDetail: View {
  // ====================================================
  // Global state
  // ====================================================
  @EnvironmentObject var modelData: ModelData

  // ====================================================
  // Props
  // ====================================================
  @State var landmark: Landmark

  // ====================================================
  // Computed
  // ====================================================
  var landmarkIndex: Int {
    modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
  }

  // ====================================================
  // View
  // ====================================================
  var body: some View {
    ScrollView {
      // Map
      MapView(coordinate: landmark.locationCoordinate).frame(height: 300)

      // Image
      CircleImage(image: landmark.image)
        .offset(y: -130)
        .padding(.bottom, -130)

      // Details
      VStack(alignment: .leading) {
        HStack {
          Text(landmark.name)
            .font(.title)

          FavoriteButton(isSet: $landmark.isFavorite)
        }

        HStack {
          Text(landmark.park)
          Spacer()
          Text(landmark.state)
        }
        .font(.subheadline)
        .foregroundColor(.secondary)

        Divider()

        Text("About \(landmark.name)")
          .font(.title2)

        Text(landmark.description)
      }
      .padding()
    }
    .navigationTitle(landmark.name)
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct LandmarkDetail_Previews: PreviewProvider {
  static let modelData = ModelData()

  static var previews: some View {
    LandmarkDetail(landmark: ModelData().landmarks[0])
      .environmentObject(modelData)
  }
}
