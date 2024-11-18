//
//  LandmarksList.swift
//  Landmarks
//
//  Created by Borgim on 01/10/24.
//

import SwiftUI

struct LandmarksList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly: Bool = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter {
            landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {                
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Show favorites only")
                }
                
                ForEach(filteredLandmarks) {
                    landmark in
                    
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .listStyle(.plain)
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a landmark")
        }
    }
}

#Preview {
    LandmarksList()
        .environment(ModelData())
}
