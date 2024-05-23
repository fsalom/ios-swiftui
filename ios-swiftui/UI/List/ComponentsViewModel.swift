//
//  ComponentsViewModel.swift
//  ios-swiftui
//
//

import Foundation

class ComponentsListViewModel: ObservableObject {
    @Published public var components = [MenuOption]()
    
    func load() {
        components = [MenuOption(name: "Lista de Rick y Morty")]
    }
}
