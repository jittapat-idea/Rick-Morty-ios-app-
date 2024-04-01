//
//  RMCharacterGender.swift
//  RickAndMorty
//
//  Created by Jittapat Ausakul on 31/3/2567 BE.
//

import Foundation

enum RMCharacterGender: String, Codable{
    ///'Female', 'Male', 'Genderless' or 'unknown'
    case female = "Female"
    case male = "Male"
    case genderless = "Genderless"
    case unknown = "unknown"
}
