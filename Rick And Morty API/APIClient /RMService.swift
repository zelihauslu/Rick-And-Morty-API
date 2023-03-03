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
    
    /// Send RM API call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error
    public func execute (_ request : RMRequest, completion: @escaping () -> Void){}
}
