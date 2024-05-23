//
//  Character.swift
//  ios-swiftui
//
//

import Foundation

struct Character: Identifiable {
    let id = UUID()
    var name: String
    var image: String

    init(with dto: CharacterDTO) {
        self.name = dto.name
        self.image = dto.image
    }
}
