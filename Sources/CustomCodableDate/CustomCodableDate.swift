import Foundation

@propertyWrapper
public struct CustomCodableDate<Strategy: DateCodableStrategy> {
    public var wrappedValue: Date?
    
    public init(wrappedValue: Date?) {
        self.wrappedValue = wrappedValue
    }
}

extension CustomCodableDate: Codable {
    
    public init(from decoder: Decoder) throws {
        if let rawValue = try? String(from: decoder) {
            self.wrappedValue = try Strategy.decode(rawValue)
        }
        else {
            self.wrappedValue = nil
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        let rawValue = Strategy.encode(self.wrappedValue)
        try rawValue.encode(to: encoder)
    }
}
