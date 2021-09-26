

//
//  BankAccount.swift
//  Chain
//
//  Created by YocelinGR on 09/09/21.
//  Copyright © 2021 YocelinGR . All rights reserved.
//

struct BankAccount {
    var bankAccountId: String?
    let bankAccountNumber: String
    var status: Boolean
    var owner: String?
    let currency: String
    let countryCode: String
    let bank: Bank
    let bankAccountDataLocalized: MoneyAccountDataLocalizedMex
}

struct MoneyAccountDataLocalizedMex {
    let clabe: String
}
