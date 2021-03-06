//
// Device.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Device: Codable, Hashable {

    public var id: UUID
    public var externalKey: String?
    public var name: String?
    public var ips: [String]?
    public var dns: [String]?
    public var torOver: Bool? = false
    public var connectionMode: ConnectionMode?
    public var wireguard: WireGuard?
    public var location: Location?
    public var servers: [Server]?
    public var lastActiveAt: Date?

    public init(id: UUID, externalKey: String? = nil, name: String? = nil, ips: [String]? = nil, dns: [String]? = nil, torOver: Bool? = false, connectionMode: ConnectionMode? = nil, wireguard: WireGuard? = nil, location: Location? = nil, servers: [Server]? = nil, lastActiveAt: Date? = nil) {
        self.id = id
        self.externalKey = externalKey
        self.name = name
        self.ips = ips
        self.dns = dns
        self.torOver = torOver
        self.connectionMode = connectionMode
        self.wireguard = wireguard
        self.location = location
        self.servers = servers
        self.lastActiveAt = lastActiveAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case externalKey = "external_key"
        case name
        case ips
        case dns
        case torOver = "tor_over"
        case connectionMode = "connection_mode"
        case wireguard
        case location
        case servers
        case lastActiveAt = "last_active_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(externalKey, forKey: .externalKey)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(ips, forKey: .ips)
        try container.encodeIfPresent(dns, forKey: .dns)
        try container.encodeIfPresent(torOver, forKey: .torOver)
        try container.encodeIfPresent(connectionMode, forKey: .connectionMode)
        try container.encodeIfPresent(wireguard, forKey: .wireguard)
        try container.encodeIfPresent(location, forKey: .location)
        try container.encodeIfPresent(servers, forKey: .servers)
        try container.encodeIfPresent(lastActiveAt, forKey: .lastActiveAt)
    }
}

