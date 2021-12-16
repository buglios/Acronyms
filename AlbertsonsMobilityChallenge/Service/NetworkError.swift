//
//  NetworkError.swift
//  AlbertsonsMobilityChallenge
//
//  Created by Serge Tsogtbaatar on 12/15/21.
//

import Foundation

enum NetworkError: Error, Equatable {
    case missingData
    case badServerResponse(Int)
    case badRequest
    case emptyResult
}
