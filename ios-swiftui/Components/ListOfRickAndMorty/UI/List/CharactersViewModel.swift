//
//  CharactersViewModel.swift
//  ios-swiftui
//

import Foundation
import SwiftUI

@MainActor
class CharacterListViewModel: ObservableObject {
    @Published public var characters = [Character]()

    public var currentPage = 1 {
        didSet {
            fetchCharacters()
        }
    }

    public var shouldDisplayNextPage: Bool {
        if characters.isEmpty == false,
           let totalPages = totalPage,
           currentPage < totalPages {
            return true
        }
        return false
    }

    public private(set) var totalPage: Int?
    public private(set) var totalCharacters: Int?

    var rickAndMortyUseCase: RickAndMortyUseCaseProtocol
    init() {
        let repository = RickAndMortyRepository()
        self.rickAndMortyUseCase = RickAndMortyUseCase(repository: repository)
    }

    func fetchCharacters() {
        Task {
            characters = try await rickAndMortyUseCase.getCharacters()
        }
    }
}
