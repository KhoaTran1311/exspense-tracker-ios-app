//
//  testApp.swift
//  test
//
//  Created by Minh Khoa Tran on 10/3/24.
//

import SwiftUI

@main
struct testApp: App {
    @StateObject var transactionListVM = TransactionListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
