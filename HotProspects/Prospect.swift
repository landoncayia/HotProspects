//
//  Prospect.swift
//  HotProspects
//
//  Created by Landon Cayia on 9/12/22.
//

import SwiftUI

class Prospect: Identifiable, Codable {
    var id = UUID()
    var name = "Anonymous"
    var emailAddress = ""
    var isContacted = false
}

@MainActor class Prospects: ObservableObject {
    @Published var people: [Prospect]
    
    init() {
        // will be changed later
        people = []
    }
}
