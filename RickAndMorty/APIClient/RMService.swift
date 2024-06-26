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
    
    enum RMServiceError: Error{
        case failedToCreateRequest
        case failedToGetData
    }
    
    /// เรียก API ของ Rick และ Morty
    /// - Parameters:
    ///   - request: request instance
    ///   - Type: type of object we expect to get back
    ///   - completion: Callback(ตอบกลับ) ด้วย ข้อมูล หรือ error
    public func execute<T:Codable>(
        _ request: RMRequest ,
        expecting type: T.Type,
        completion: @escaping(Result<T,Error>) -> Void)
    {
        guard let urlRequest = self.request(from: request) else{
            completion(.failure(RMServiceError.failedToCreateRequest))
            return
        }
        
        let task = URLSession.shared.dataTask(with: urlRequest) {data, _,error in
            guard let data = data,error == nil else{
                completion(.failure(error ?? RMServiceError.failedToGetData))
                return
            }
            
            // Decode response
            do{
                let result = try JSONDecoder().decode(type.self ,from: data)
                completion(.success(result))
            }
            catch{
                completion(.failure(error))
            }
        }
        task.resume()
            
    }
    /// MARK: - Private
    private func request(from rmRequest: RMRequest) -> URLRequest?{
        guard let url = rmRequest.url else{
            return nil
        }
        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod
        
        return request
    }
    
}
