//
// Location.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Location: Codable, Hashable {

    public var id: UUID
    public var name: String
    public var latitude: Double
    public var longitude: Double
    public var country: Country
    public var alternativeNames: [String]?

    public init(id: UUID, name: String, latitude: Double, longitude: Double, country: Country, alternativeNames: [String]? = nil) {
        self.id = id
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
        self.country = country
        self.alternativeNames = alternativeNames
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case latitude
        case longitude
        case country
        case alternativeNames = "alternative_names"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(latitude, forKey: .latitude)
        try container.encode(longitude, forKey: .longitude)
        try container.encode(country, forKey: .country)
        try container.encodeIfPresent(alternativeNames, forKey: .alternativeNames)
    }
}
