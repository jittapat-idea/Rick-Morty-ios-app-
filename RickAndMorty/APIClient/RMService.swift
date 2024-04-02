//
//  RMService.swift
//  RickAndMorty
//
//  Created by Jittapat Ausakul on 30/3/2567 BE.
//

import Foundation

/// API Service Object หลักเพื่อรับข้อมูล Rick และ Morty
final class RMService {
    /// singleton instance ที่ใช้ร่วมกัน
    static let shared = RMService()
    
    /// Privatized constructor
    private init() {}
    
    /// เรียก API ของ Rick และ Morty
    /// - Parameters:
    ///   - request: request instance
    ///   - Type: type of object we expect to get back
    ///   - completion: Callback(ตอบกลับ) ด้วย ข้อมูล หรือ error
    public func execute<T:Codable>(
        _ request: RMRequest ,
        expecting type: T.Type,
        completion: @escaping(Result<T,Error>) -> Void){
    }
}
