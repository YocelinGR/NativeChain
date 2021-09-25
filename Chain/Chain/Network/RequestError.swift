

//
//  RequestError.swift
//  Chain
//
//  Created by YocelinGR on 06/09/21.
//  Copyright © 2021 YocelinGR. All rights reserved.
//

import Foundation

enum RequestError: Error, Titleable {
    case invalidRequest

    var title: String {
        switch self {
        case .invalidRequest:
            return "Invalid Request"
        }
    }
}
