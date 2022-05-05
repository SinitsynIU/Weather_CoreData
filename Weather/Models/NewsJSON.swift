//
//  NewsJSON.swift
//  Weather
//
//  Created by Илья Синицын on 24.03.2022.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let newsJSON = try? newJSONDecoder().decode(NewsJSON.self, from: jsonData)

import Foundation

// MARK: - NewsJSON
struct NewsJSON: Codable {
    let status: String?
    let totalResults: Int?
    var articles: [Article]?
}

// MARK: - Article
struct Article: Codable {
    let source: Source
    let author: String?
    let title, articleDescription: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
    let content: String?

    enum CodingKeys: String, CodingKey {
        case source, author, title
        case articleDescription = "description"
        case url, urlToImage, publishedAt, content
    }
}

// MARK: - Source
struct Source: Codable {
    let id: String?
    let name: String?
}
