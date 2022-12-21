//
//  DateOnly.swift
//  
//
//  Created by Tiago Ribeiro on 21/12/2022.
//

import Foundation

public struct DateOnly: DateCodableStrategy {
    
    public static func decode(_ value: String?) throws -> Date? {
        guard let value = value else { return nil }
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyyMMdd"
        return formatter.date(from: value)
    }
    
    public static func encode(_ date: Date?) -> String? {
        guard let date = date else { return nil }
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyyMMdd"
        return formatter.string(from: date)
    }
}
