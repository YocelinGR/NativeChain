//
//  SaleEnum.swift
//  Chain
//
//  Created by YocelinGR on 25/09/21.
//  Copyright © 2021 YocelinGR . All rights reserved.
//

import Foundation

protocol Titleable {
    var title: String { get }
}

enum SaleCategory: Titleable {
    case sale
    case invoicedSale

    var title: String {
        switch self {
        case .sale:
            return "sale"
        case .invoicedSale:
            return "invoicedSale"
        }
    }
}

enum SaleStatus: Titleable {
    case draft
    case pendingValidation
    case valid
    case cancelled
    case deleted
    case internallyCancelled

    var title: String {
        switch self {
        case .draft:
            return "draft"
        case .pendingValidation:
            return "pendingValidation"
        case .valid:
            return "valid"
        case .cancelled:
            return "cancelled"
        case .deleted:
            return "deleted"
        case .internallyCancelled:
            return "internallyCancelled"
        }
    }
}

enum InvoicedStatus: Titleable {
    case notInvoiced
    case partiallyInvoiced
    case fullyInvoiced
    case fullyInvoicedInConsolidatedInvoice
    case invoicing
    case inCancellationProcess
    case cancelled

    var title: String {
        switch self {
        case .notInvoiced:
            return "notInvoiced"
        case .partiallyInvoiced:
            return "partiallyInvoiced"
        case .fullyInvoiced:
            return "fullyInvoiced"
        case .fullyInvoicedInConsolidatedInvoice:
            return "fullyInvoicedInConsolidatedInvoice"
        case .invoicing:
            return "invoicing"
        case .inCancellationProcess:
            return "inCancellationProcess"
        case .cancelled:
            return "cancelled"
        }
    }
}

enum PaymentStatus: Titleable {
    case notPaid
    case partiallyPaid
    case fullyPaid

    var title: String {
        switch self {
        case .notPaid:
            return "notPaid"
        case .partiallyPaid:
            return "partiallyPaid"
        case .fullyPaid:
            return "fullyPaid"
        }
    }
}
