//
// BillingFeature.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BillingFeature: Codable, Hashable {

    /** Billing feature's slug */
    public var bundleId: String
    /** Billing feature's expiry date */
    public var expiryDate: Date?
    public var constraints: [Constraint]?

    public init(bundleId: String, expiryDate: Date? = nil, constraints: [Constraint]? = nil) {
        self.bundleId = bundleId
        self.expiryDate = expiryDate
        self.constraints = constraints
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case bundleId = "bundle_id"
        case expiryDate = "expiry_date"
        case constraints
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(bundleId, forKey: .bundleId)
        try container.encodeIfPresent(expiryDate, forKey: .expiryDate)
        try container.encodeIfPresent(constraints, forKey: .constraints)
    }
}
