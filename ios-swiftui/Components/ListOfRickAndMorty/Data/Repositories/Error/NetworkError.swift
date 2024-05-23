//
//  NetworkError.swift
//  ios-swiftui
//
//

import Foundation

enum NetworkError: Error{
    case badURL
    case badResponse
    case decodeError
    case badRequest
    case invalidResponse
}
