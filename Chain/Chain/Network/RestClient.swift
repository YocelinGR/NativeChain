
//
//  RestClient.swift
//  Chain
//
//  Created by YocelinGR on 06/09/21.
//  Copyright © 2021 YocelinGR. All rights reserved.
//

import Foundation

typealias Restable = Codable & Identifiable

struct RestClient<T: Restable> {
    let client: HttpClient
    let path: String

    public var decoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        decoder.dateDecodingStrategy = .iso8601
        return decoder
    }()

    public var encoder: JSONEncoder = {
        let encoder = JSONEncoder()
        encoder.keyEncodingStrategy = .convertToSnakeCase
        return encoder
    }()

    func list(complete: @escaping (Result<[T], Error>) -> Void) {
        client.get(path: path) { result in
            let newResult = result.flatMap { parseList(data: $0) }
            complete(newResult)
        }
    }

    func show(complete: @escaping (Result<T?, Error>) -> Void) {
        show("", complete: complete)
    }

    func show(_ identifier: String, complete: @escaping (Result<T?, Error>) -> Void) {
        client.get(path: "\(path)/\(identifier)") { result in
            let newResult = result.flatMap { parse(data: $0) }
            complete(newResult)
        }
    }

    func create(complete: @escaping (Result<T?, Error>) -> Void) throws {
        client.post(path: path, body: nil) { result in
            let newResult = result.flatMap { parse(data: $0) }
            complete(newResult)
        }
    }

    func create(model: T, complete: @escaping (Result<T?, Error>) -> Void) throws {
        let data = try encoder.encode(model)
        client.post(path: path, body: data) { result in
            let newResult = result.flatMap { parse(data: $0) }
            complete(newResult)
        }
    }

    func update(model: T, complete: @escaping (Result<T?, Error>) -> Void) throws {
        let data = try encoder.encode(model)
        client.put(path: "\(path)/\(model.id)", body: data) { result in
            let newResult = result.flatMap { parse(data: $0) }
            complete(newResult)
        }
    }

    func delete(complete: @escaping (Result<T?, Error>) -> Void) {
        client.delete(path: path) { result in
            let newResult = result.flatMap { parse(data: $0) }
            complete(newResult)
        }
    }

    func delete(model: T, complete: @escaping (Result<T?, Error>) -> Void) {
        client.delete(path: "\(path)/\(model.id)") { result in
            let newResult = result.flatMap { parse(data: $0) }
            complete(newResult)
        }
    }

    private func parseList(data: Data?) -> Result<[T], Error> {
        if let data = data {
            return Result { try self.decoder.decode([T].self, from: data) }
        } else {
            return .success([])
        }
    }

    private func parse(data: Data?) -> Result<T?, Error> {
        if let data = data {
            return Result { try self.decoder.decode(T.self, from: data) }
        } else {
            return .success(nil)
        }
    }
}
