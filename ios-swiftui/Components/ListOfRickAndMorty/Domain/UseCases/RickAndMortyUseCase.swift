//
//  Character.swift
//  ios-swiftui
//

import Foundation

protocol RickAndMortyUseCaseProtocol {
    func getCharacters() async throws -> [Character]
}

final class RickAndMortyUseCase: RickAndMortyUseCaseProtocol {

    var repository: RickAndMortyRepositoryProtocol

    init(repository: RickAndMortyRepositoryProtocol) {
        self.repository = repository
    }

    func getCharacters() async throws -> [Character] {
        do {
            let page = 0
            let data = try await repository.getCharacters(for: page)
            let characters = data.results.map { characterDTO in
                Character(with: characterDTO)
            }
            return characters
        } catch {
            throw error
        }
    }
}
