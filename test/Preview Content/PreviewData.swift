//
//  PreviewData.swift
//  test
//
//  Created by Minh Khoa Tran on 10/3/24.
//

import Foundation
import SwiftUI

var transactionPreviewData = Transaction(id: 1, date: "01/24/2022", institution: "Chase", account: "College", merchant: "Apple", amount: 20.40, type: "debit", categoryId: 801, category: "Books", isPending: false, isTransfer: false, isExpense: true, isEdited: false)

var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
