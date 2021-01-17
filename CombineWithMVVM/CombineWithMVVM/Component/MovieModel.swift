//
//  MovieModel.swift
//  CombineWithMVVM
//
//  Created by Faraz Haider on 18/01/2021.
//

import Foundation

// MARK: - Response
struct Response: Decodable, Hashable {
    let searchType, expression: String
    let results: [Result]
    let errorMessage: String
}

// MARK: - Result
struct Result: Decodable, Hashable {
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    public static func == (lhs: Result, rhs: Result) -> Bool {
        return lhs.id == rhs.id
    }
    
    let id, resultType: String
    let image: String
    let title, resultDescription: String

    enum CodingKeys: String, CodingKey {
        case id, resultType, image, title
        case resultDescription = "description"
    }
}
