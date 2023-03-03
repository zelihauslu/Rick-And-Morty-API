//
//  RMCharacterStatus.swift
//  Rick And Morty API
//
//  Created by Zeliha Uslu on 3.03.2023.
//

import Foundation

enum RMCharacterStatus : String, Codable{
    case Alive = "Alive"
    case Dead = "Dead"
    case unknown = "unknown"
}
