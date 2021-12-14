//
// PlayStorePurchaseVerificationRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PlayStorePurchaseVerificationRequest: Codable, Hashable {

    /** The inapp product SKU (for example, 'com.some.thing.inapp1'). */
    public var productSku: String
    /** The token provided to the user's device when the inapp product was purchased. */
    public var purchaseToken: String

    public init(productSku: String, purchaseToken: String) {
        self.productSku = productSku
        self.purchaseToken = purchaseToken
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case productSku = "product_sku"
        case purchaseToken = "purchase_token"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(productSku, forKey: .productSku)
        try container.encode(purchaseToken, forKey: .purchaseToken)
    }
}
