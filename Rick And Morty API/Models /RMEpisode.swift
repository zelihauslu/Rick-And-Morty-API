//
//  RMEpisodes.swift
//  Rick And Morty API
//
//  Created by Zeliha Uslu on 3.03.2023.
//

import Foundation

// Model is a basicallly a data type an object that represents some data it could be from an API it could just be some local objects

struct RMEpisode : Codable{
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}



