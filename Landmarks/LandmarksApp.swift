//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Borgim on 30/09/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
