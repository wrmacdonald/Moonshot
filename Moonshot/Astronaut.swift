//
//  Astronaut.swift
//  Moonshot
//
//  Created by Wes MacDonald on 3/26/24.
//

import Foundation

struct Astronaut: Codable, Identifiable, Hashable {
    let id: String
    let name: String
    let description: String
}
