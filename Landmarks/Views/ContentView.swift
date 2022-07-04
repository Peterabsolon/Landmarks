//
//  ContentView.swift
//  Landmarks
//
//  Created by Peter Absolon on 03.06.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarksList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
    
