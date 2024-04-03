//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Jittapat Ausakul on 31/3/2567 BE.
//

import Foundation

enum RMCharacterStatus: String, Codable{
    ///'Alive', 'Dead' or 'unknown'
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
}
