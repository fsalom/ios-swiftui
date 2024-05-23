//
//  Menu.swift
//  ios-swiftui
//
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
