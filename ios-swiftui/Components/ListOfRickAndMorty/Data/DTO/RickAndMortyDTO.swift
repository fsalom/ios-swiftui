//
//  CharacterDTO.swift
//  ios-swiftui
//
//

import SwiftUI

struct CharacterDTO: Codable {
    var name: String
    var image: String
}

struct InfoDTO: Codable {
    var count: Int
    var pages: Int
    var next: String?
}

struct ListDTO: Codable {
    var info: InfoDTO
    var results: [CharacterDTO]
}
