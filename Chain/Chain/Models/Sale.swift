//
//  Sale.swift
//  Chain
//
//  Created by YocelinGR on 09/09/21.
//  Copyright © 2021 YocelinGR . All rights reserved.
//

// TODO: Money amounts will be converted to type Money lately

struct Sale: Restable {
    var saleId: String?
    var saleNumber: Int?
    let saleCategory: SaleCategory
    let companyNumber: Int
    let branchNumber: Int
    let clientNumber: String
    let date: Date
    let registeredDate: Date
    var invoices: [Invoices]?
    var incomeCategoryId: String
    let salesPersonId: String
    var discountPercentage: String
    var discountAmount: String
    var subtotal: String
    var totalTransferredTaxes: String
    var totalWithheldTaxes: String
    var total: String
    let currency: String
    var exchangeRate: String
    var internalNotes: String
    var externalNotes: String
    var status: saleStatus
    var invoicedStatus: InvoicedStatus
    var paymentStatus: PaymentStatus
    var pdfFile: String?
    var xmlFile: String?
    var items: [DocumentItem]?
    var expectedPaymentMethod: String
    var expectedPaymentMethodDescription: String
    let expectedPaymentForm: PaymentForm
    var payments: [AccountOperation]
    let saleAdditionalDataLocalized: [SaleAdditionalDataLocalized]
    let countryCode: String
    var saleHistory: [saleHistory]?

    init(saleNumber: Int? = nil,
         saleCategory: SaleCategory,
         companyNumber: Int,
         branchNumber: Int,
         clientNumber: String,
         date: Date,
         registeredDate: Date,
         incomeCategoryId: String,
         salesPersonId: String,
         discountPercentage: String,
         discountAmount: String,
         subtotal: String,
         totalTransferredTaxes: String,
         totalWithheldTaxes: String,
         total: String,
         currency: String,
         exchangeRate: String,
         internalNotes: String,
         externalNotes: String,
         status: saleStatus,
         invoicedStatus: InvoicedStatus,
         paymentStatus: PaymentStatus,
         items: [DocumentItem]? = [],
         expectedPaymentMethod: String,
         expectedPaymentMethodDescription: String,
         expectedPaymentForm: PaymentForm,
         payments: [AccountOperation],
         saleAdditionalDataLocalized: [SaleAdditionalDataLocalized],
         countryCode: String)
    {
        saleId = nil
        invoices = nil
        saleHistory = nil
        self.saleNumber = saleNumber
        self.saleCategory = saleCategory
        self.companyNumber = companyNumber
        self.branchNumber = branchNumber
        self.clientNumber = clientNumber
        self.date = date
        self.registeredDate = registeredDate
        self.incomeCategoryId = incomeCategoryId
        self.salesPersonId = salesPersonId
        self.discountPercentage = discountPercentage
        self.discountAmount = discountAmount
        self.subtotal = subtotal
        self.totalTransferredTaxes = totalTransferredTaxes
        self.totalWithheldTaxes = totalWithheldTaxes
        self.total = total
        self.currency = currency
        self.exchangeRate = exchangeRate
        self.internalNotes = internalNotes
        self.externalNotes = externalNotes
        self.status = status
        self.invoicedStatus = invoicedStatus
        self.paymentStatus = paymentStatus
        self.items = items
        self.expectedPaymentMethod = expectedPaymentMethod
        self.expectedPaymentMethodDescription = expectedPaymentMethodDescription
        self.expectedPaymentForm = expectedPaymentForm
        self.payments = payments
        self.saleAdditionalDataLocalized = saleAdditionalDataLocalized
        self.countryCode = countryCode
    }

    mutating func updateSaleStatus(newSaleStatus: SaleStatus) {
        saleStatus = newSaleStatus
    }

    mutating func updateSaleCategory(newSaleCategory: SaleCategory) {
        saleCategory = newSaleCategory
    }

    mutating func updateInvoicedStatus(newInvoicedSatatu: InvoicedStatus) {
        invoicedStatus = newInvoicedSatatu
    }

    mutating func updatePaymentStatus(newPaymentStatus: PaymentStatus) {
        paymentStatus = newPaymentStatus
    }
}
