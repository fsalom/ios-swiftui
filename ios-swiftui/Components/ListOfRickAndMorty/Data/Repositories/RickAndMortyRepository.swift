//
//  RickAndMortyRepository.swift
//  ios-swiftui
//

import Foundation

protocol RickAndMortyRepositoryProtocol {
    func getCharacters(for page: Int) async throws -> ListDTO
}

final class RickAndMortyRepository: RickAndMortyRepositoryProtocol {
    func getCharacters(for page: Int = 0) async throws -> ListDTO {
        guard let url = URL(string: "https://rickandmortyapi.com/api/character/?page=\(page)") else {
            throw NetworkError.badURL
        }
        let request = URLRequest(url: url)
        print(request)
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            guard let response = response as? HTTPURLResponse else {
                throw NetworkError.invalidResponse
            }
            let decoder = JSONDecoder()
            do {
                if (200..<300).contains(response.statusCode) {
                    return try decoder.decode(ListDTO.self, from: data)
                } else {
                    throw NetworkError.badResponse
                }
            } catch {
                throw NetworkError.decodeError
            }
        } catch {
            throw NetworkError.badRequest
        }
    }
}
