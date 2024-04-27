//
//  MovieService.swift
//  SwiftUIMovieDB
//
//  Created by Roman on 27/04/2024.
//

import Foundation

protocol MovieService {
    
    func fetchMovies(from endpoint: MovieListEndPoint, completion: @escaping (Result<MovieResponse, MovieError>) -> ())
    func fetchMovie(id: Int, completion: @escaping (Result<Movie, MovieError>) -> ())
    func serchMovie(query: String, completion: @escaping (Result<MovieResponse, MovieError>) -> ())
    
}

enum MovieListEndPoint: String {
    case nowplaying = "now_playing"
    case upcoming
    case toprated = "top_raded"
    case popular
    
    var description: String {
        switch self {
        case .nowplaying: return "Now Playing"
        case .upcoming: return "Upcominng"
        case .toprated: return "Top Rated"
        case .popular: return "Popular"
        }
    }
}

enum MovieError: Error, CustomNSError {
    
    case apiError
    case invalidEndpoint
    case invalidResponse
    case noData
    case serializationError
    
    var localizedDescription: String {
        switch self {
        case .apiError: return "Failed to fetch data"
        case .invalidEndpoint: return "Invalid endpoint"
        case .invalidResponse: return "invalid response"
        case .noData: return "No data"
        case .serializationError: return "Serialization error"
        }
    }
    
    var errorUserInfo: [String: Any] {
        [NSLocalizedDescriptionKey: localizedDescription]
    }
}
