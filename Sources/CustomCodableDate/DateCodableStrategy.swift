//
//  DateCodableStrategy.swift
//  
//
//  Created by Tiago Ribeiro on 21/12/2022.
//


import Foundation

public protocol DateCodableStrategy {
    static func decode(_ value: String?) throws -> Date?
    static func encode(_ date: Date?) -> String?
}
