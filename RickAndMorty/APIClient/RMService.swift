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
    ///   - completion: Callback(ตอบกลับ) ด้วย ข้อมูล หรือ error
    public func execute(_ request: RMRequest ,completion: @escaping() -> Void){
        
    }
}
