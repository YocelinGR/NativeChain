//
//  PaymentDetail.swift
//  Chain
//
//  Created by YocelinGR on 25/09/21.
//  Copyright © 2021 YocelinGR . All rights reserved.
//
enum TransferType: Titleable {
    case spei
    case other

    var title: String {
        switch self {
        case .spei:
            return "spei"
        case .other:
            return "other"
        }
    }
}

struct PaymentDetail {
    let transferType: TranferType
    let trackingKey: String
    let certificate: String
    let paymentChain: String
    let paymentStamp: String
    let bank: String
    let issuerAccount: String
    let checkNumber: String
    let emitterTaxId: String
}
