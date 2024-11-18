//
//  Profile.swift
//  Landmarks
//
//  Created by Borgim on 04/11/24.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications: Bool = true
    var seasonalPhoto: Season = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "Borgim")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍃"
        case winter = "☃️"
        
        var id: String { rawValue }
    }
}
