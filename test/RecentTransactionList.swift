//
//  RecentTransactionList.swift
//  test
//
//  Created by Minh Khoa Tran on 11/3/24.
//

import SwiftUI

struct RecentTransactionList: View {
    @EnvironmentObject var transtionListVM: TransactionListViewModel
    
    var body: some View {
        VStack {
            HStack {
                // Header
                Text("Recent Transactions")
                    .bold()
                
                Spacer()
                
                // Header Link
                NavigationLink {
                    
                } label: {
                    HStack(spacing: 4) {
                        Text("See All")
                        Image(systemName: "chevron.right")
                    }
                    .foregroundColor(Color.text)
                }
            }
            .padding(.top)
            
            // List
            
            ForEach(Array(transtionListVM.transactions.prefix(5).enumerated()), id: \.element) { index, transaction in
                TransactionRow(transaction: transaction)
                
                Divider()
                    .opacity(index == 4 ? 0 : 1)
            }
        }
        .padding()
        .background(Color.systemBackground)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.primary.opacity(0.2), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x:0, y: 5)
    }
}

struct RecentTransactionList_Previews: PreviewProvider{
    static let transactionListVM: TransactionListViewModel = {
        let transactionListVM = TransactionListViewModel()
        transactionListVM.transactions = transactionListPreviewData
        return transactionListVM
    }()
    
    static var previews: some View {
        RecentTransactionList()
            .environmentObject(transactionListVM)
    }
}














