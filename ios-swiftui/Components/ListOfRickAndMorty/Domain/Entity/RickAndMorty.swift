//
//  Character.swift
//  ios-swiftui
//
//  Created by Fernando Salom Carratala on 7/1/23.
//

import Foundation

struct Character {
    var name: String
    var image: String

    init(with dto: CharacterDTO) {
        self.name = dto.name
        self.image = dto.image
    }
}
