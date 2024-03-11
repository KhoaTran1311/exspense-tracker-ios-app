//
//  Extensions.swift
//  test
//
//  Created by Minh Khoa Tran on 10/3/24.
//

import Foundation
import SwiftUI

extension Color {
    static let systemBackground = Color(uiColor: .systemBackground)
}

extension DateFormatter {
    static let allNumericUSA: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/YYYY"
        
        return formatter
    }()
}

extension String {
    func dateParsed() -> Date {
        guard let parseDate = DateFormatter.allNumericUSA.date(from: self) else {return Date()}
        
        return parseDate
    }
}
