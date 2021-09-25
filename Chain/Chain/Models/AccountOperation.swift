
//
//  AccountOperation.swift
//  Chain
//
//  Created by YocelinGR on 09/09/21.
//  Copyright © 2021 YocelinGR . All rights reserved.
//

struct AccountOperation {
    var id: Int?
    let amount: String
    let branchNumber: Int
    let companyNumber: Int
    let currency: String
    let clientId: String
    var internalNote: String?
    let operationDatetime: Date
    var operationNumber: Int?
    let timeZone: String
    let tzOffset: String
    var insertedAt: Date?
    var updatedAt: Date?
    let accountId: Int
    let paymentForm: PaymentForm
    var accountOperationType: AccountOperationType
    var accountOperationStatus: AccountOperationStatus
    var sales: [Sales]?
    var rep: Rep?
    let paymentDetail: PaymentDetail
    var xmlFile: String?
    var pdfFile: String?

    init(
        amount: String,
        branchNumber: Int,
        companyNumber: Int,
        currency: String,
        clientId: String,
        internalNote: String ?? "",
        operationDatetime: Date,
        accountId: Int,
        paymentForm: PaymentForm,
        accountOperationType: AccountOperationType,
        accountOperationStatus: AccountOperationStatus,
        paymentDetail: PaymentDetail
    ) {
        id = nil
        self.amount = amount
        self.branchNumber = branchNumber
        self.companyNumber = companyNumber
        self.currency = currency
        self.clientId = clientId
        self.internalNote = internalNote
        operationNumber = nil
        self.operationDatetime = operationDatetime
        // TODO: Change for an function to get actual user timezone and offset
        timeZone = "America/Mexico_City"
        tzOffset = -6
        insertedAt = nil
        updatedAt = nil
        self.accountId = accountId
        self.paymentForm = paymentForm
        self.accountOperationType: accountOperationType
        self.accountOperationStatus: accountOperationStatus
        saleIds: saleIds
        sales = nil
        rep = nil
        self.paymentDetail: paymentDetail
        xmlFile = nil
        pdfFile = nil
    }
}
