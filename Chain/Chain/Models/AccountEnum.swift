//
//  AccountEnum.swift
//  Chain
//
//  Created by YocelinGR on 25/09/21.
//  Copyright © 2021 YocelinGR . All rights reserved.
//

enum AccountOperationType: Titleable {
    case income
    case expense

    var title: String {
        switch self {
        case .income:
            return "income"
        case .expense:
            return "expense"
        }
    }
}

enum AccountOperationStatus: Titleable {
    case received
    case cancelled
    case deleted

    var title: String {
        switch self {
        case .received:
            return "received"
        case .cancelled:
            return "cancelled"
        case .deleted:
            return "deleted"
        }
    }
}
