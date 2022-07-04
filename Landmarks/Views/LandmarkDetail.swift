//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Peter Absolon on 04.07.2022.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            // Map
            MapView().frame(height: 300)
            
            // Image
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            // Details
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)

                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    
                    Spacer()
                    
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()
            
            // Spacer, push stuff to top
            Spacer()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
