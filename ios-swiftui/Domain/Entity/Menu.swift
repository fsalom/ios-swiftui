//
//  Menu.swift
//  ios-swiftui
//
//  Created by Fernando Salom Carratala on 7/1/23.
//

import Foundation

struct MenuSection {
    var name: String
    var options: [MenuOption]
}

struct MenuOption: Identifiable {
    let id = UUID()
    var name: String
}
