
//
//  RespomseError.swift
//  Chain
//
//  Created by YocelinGR on 06/09/21.
//  Copyright © 2021 YocelinGR. All rights reserved.
//

import Foundation

protocol Titleable {
    var title: String { get }
}

enum ResponseError: Error, Titleable {
    case invalidResponse
    case clientError
    case serverError

    var title: String {
        switch self {
        case .invalidResponse:
            return "Invalid Response"
        case .clientError:
            return "Client error"
        case .serverError:
            return "Internal Server error"
        }
    }
}
