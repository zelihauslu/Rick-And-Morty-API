//
//  RMService.swift
//  Rick And Morty API
//
//  Created by Zeliha Uslu on 3.03.2023.
//

import Foundation

 // with Singleton going to alsop briefly look at dependency injection one kind of build this out and want to clean up all of our code so you can access from anywhere in the whole app 

/// Primary API service object to get Rick And Morty data
final class RMService{
    
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init() {}
    
    enum RMServiceError : Error{
        case failedToCreateRequest
        case failedToGetData
    }
    
    /// Send RM API call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The type of object expect to get back
    ///   - completion: Callback with data or error
    public func execute<T: Codable> (_ request : RMRequest,
                                     expecting type : T.Type,
                         completion: @escaping (Result<String, Error>
                         ) -> Void){
        
        guard let urlRequest = self.request(from: request) else{
            completion(.failure(RMServiceError.failedToCreateRequest))
            return
        }
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? RMServiceError.failedToGetData))
                return
            }

             // Decode Response
            do{
                let result = try
                JSONDecoder().decode(type.self, from: data)
                completion(.success(result as! String))
            }catch{
                completion(.failure(error))
            }
        }
        task.resume()
    }



// MARK - Private

private func request(from rmRequest: RMRequest) -> URLRequest?{
    guard let url = rmRequest.url else{
        return nil
    }
    
    var request = URLRequest(url: url)
    request.httpMethod = rmRequest.httpMethod
    return request
}
}
