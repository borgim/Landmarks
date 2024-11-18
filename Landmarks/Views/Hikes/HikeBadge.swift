//
//  HikeBadge.swift
//  Landmarks
//
//  Created by Borgim on 05/11/24.
//

import SwiftUI

struct HikeBadge: View {
    var name: String
    
    var body: some View {
        VStack(alignment: .center) {
            Badge()
                .frame(width: 300.0, height: 300.0)
                .scaleEffect(1.0 / 3.0)
                .frame(width: 100.0, height: 100.0)
            
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for \(name).")
        }
    }
}

#Preview {
    HikeBadge(name: "Preview Testing")
}
