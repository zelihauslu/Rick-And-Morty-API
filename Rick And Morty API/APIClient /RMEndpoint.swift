//
//  RMEndpoint.swift
//  Rick And Morty API
//
//  Created by Zeliha Uslu on 3.03.2023.
//

import Foundation

/// Represent uniq API endpoints
// If @frozen is added to a structure, it indicates that the structure is immutable and cannot be changed or disabled later.
@frozen enum RMEndpoint : String{
    
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
