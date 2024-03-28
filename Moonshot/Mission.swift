//
//  Mission.swift
//  Moonshot
//
//  Created by Wes MacDonald on 3/26/24.
//

import Foundation

struct Mission: Codable, Identifiable {
    // can access via Mission.CrewRole
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
    // computed properties:
    var displayName: String {
        "Apollo \(id)"
    }
    
    var image: String {
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
    
    var formattedLaunchDateLong: String {
        launchDate?.formatted(date: .complete, time: .omitted) ?? "N/A"
    }
}
