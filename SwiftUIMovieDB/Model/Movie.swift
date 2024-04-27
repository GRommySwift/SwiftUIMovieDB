//
//  Movie.swift
//  SwiftUIMovieDB
//
//  Created by Roman on 27/04/2024.
//

import Foundation

struct MovieResponse: Decodable {
    
    let results: [Movie]
    
}

struct Movie: Decodable {
    
    let id: Int
    let title: String
    let backdropPath: String?
    let posterPath: String?
    let overview: String
    let voteAverage: String
    let voteCount: Int
    let runtime: Int?
    
}
