//
// Server.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Server: Codable, Hashable {

    public var host: String
    public var networkServices: [NetworkService]

    public init(host: String, networkServices: [NetworkService]) {
        self.host = host
        self.networkServices = networkServices
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case host
        case networkServices = "network_services"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(host, forKey: .host)
        try container.encode(networkServices, forKey: .networkServices)
    }
}

