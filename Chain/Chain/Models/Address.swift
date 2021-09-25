
//
//  DocumentItem.swift
//  Chain
//
//  Created by YocelinGR on 09/09/21.
//  Copyright © 2021 YocelinGR . All rights reserved.
//

struct Address {
    var addressId: String?
    var addressNumber: Int?
    var street: String
    var outsideNumber: String
    var insideNumber: String
    var neighborhood: String
    var municipality: String
    var city: String?
    var state: String
    var country: String
    var countryCode: String
    var postalCode: String
    var reference: String?
    var fullAddress: String?

    init(
        addressNumber: Int? = nil,
        street: String,
        outsideNumber: String,
        insideNumber: String,
        neighborhood: String,
        municipality: String,
        city: String? = nil,
        state: String,
        country: String,
        countryCode: String,
        postalCode: String,
        reference: String? = nil fullAddress: String? = nil
    ) {
        addressId = nil
        self.addressNumber = addressNumber
        self.street = street
        self.outsideNumber = outsideNumber
        self.insideNumber = insideNumber
        self.neighborhood = neighborhood
        self.municipality = municipality
        self.city = city
        self.state = state
        self.country = country
        self.countryCode = countryCode
        self.postalCode = postalCode
        self.reference = reference
        fullAddress = fullAddress
    }
}
