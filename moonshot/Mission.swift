//
//  Mission.swift
//  moonshot
//
//  Created by Brian Greeson on 8/10/25.
//

import Foundation

struct Mission: Codable, Identifiable {
    struct CrewRole: Codable {
        let name: String
        let role: String
    }

    let id: Int
    let launchDate: Date?
    var formattedLaunchDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
    
    let crew: [CrewRole]
    let description: String
    var image: String {
        "apollo\(id)"
    }
    
    var displayName: String {
        "Apollo \(id)"
    }
}
