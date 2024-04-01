//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Jittapat Ausakul on 29/3/2567 BE.
//

import Foundation

struct RMLocation: Codable{
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
    
