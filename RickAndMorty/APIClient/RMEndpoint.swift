//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Jittapat Ausakul on 30/3/2567 BE.
//

import Foundation


/// Represents unique API endpoint (สร้างประเภทของข้อมูลขึ้นมาใช้เอง)
@frozen enum RMEndpoint: String {
    ///Endpoint to get character info
    case character //"character"
    ///Endpoint to get location info
    case location  //"location"
    ///Endpoint to get episode info
    case episode   //"episode"
}
