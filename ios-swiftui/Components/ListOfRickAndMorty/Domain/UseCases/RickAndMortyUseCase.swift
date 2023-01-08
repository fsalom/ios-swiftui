//
//  Character.swift
//  ios-swiftui
//
//  Created by Fernando Salom Carratala on 7/1/23.
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
            var characters = data.results.map { characterDTO in
                Character(with: characterDTO)
            }
            return characters
        } catch {
            throw error
        }
    }
}
