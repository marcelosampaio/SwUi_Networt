//
//  Result.swift
//  SwUi_Networt
//
//  Created by Marcelo Sampaio on 19/05/22.
//

import Foundation

struct Result: Codable, Identifiable {
    let id = UUID()
    var trackId: Int
    var trackName: String
    var collectionName: String
    
    init() {
        self.trackId = Int()
        self.trackName = String()
        self.collectionName = String()
    }
}
