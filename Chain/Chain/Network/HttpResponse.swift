
//
//  HttpResponse.swift
//  Chain
//
//  Created by YocelinGR on 06/09/21.
//  Copyright © 2021 YocelinGR. All rights reserved.
//

import Foundation

struct HttpResponse {
    let httpUrlResponse: HTTPURLResponse

    init(response: URLResponse?) {
        httpUrlResponse = (response as? HTTPURLResponse) ?? HTTPURLResponse()
    }

    var status: StatusCode {
        return StatusCode(rawValue: httpUrlResponse.statusCode)
    }

    func result(for data: Data?) -> Result<Data?, Error> {
        // #if DEGUB
        if let udata = data, !udata.isEmpty {
            let currentData = String(data: udata, encoding: .utf8)

            debugPrint("Response: \(status) \(httpUrlResponse.statusCode) \(httpUrlResponse.url!) -d \(String(describing: currentData))")
        } else {
            debugPrint("Response: \(status) \(httpUrlResponse.statusCode) \(httpUrlResponse.url!)")
        }
        // #endif
        if let udata = data, !udata.isEmpty {
            return status.result().map { _ in data }
        } else {
            return status.result().map { _ in nil }
        }
    }
}
