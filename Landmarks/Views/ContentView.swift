//
//  ContentView.swift
//  Landmarks
//
//  Created by Borgim on 30/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentTab: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $currentTab) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarksList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

#Preview {
    ContentView().environment(ModelData())
}
