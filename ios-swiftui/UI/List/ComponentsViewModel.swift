//
//  ComponentsViewModel.swift
//  ios-swiftui
//
//  Created by Fernando Salom Carratala on 7/1/23.
//

import Foundation

class ComponentsListViewModel: ObservableObject {
    @Published public var components = [MenuOption]()
    
    func load() {
        components = [MenuOption(name: "Lista de Rick y Morty")]
    }
}
