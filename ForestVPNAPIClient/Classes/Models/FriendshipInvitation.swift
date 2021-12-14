//
// FriendshipInvitation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct FriendshipInvitation: Codable, Hashable {

    public var code: String
    public var user: User
    public var shareText: String
    public var createdAt: Date

    public init(code: String, user: User, shareText: String, createdAt: Date) {
        self.code = code
        self.user = user
        self.shareText = shareText
        self.createdAt = createdAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case user
        case shareText = "share_text"
        case createdAt = "created_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(code, forKey: .code)
        try container.encode(user, forKey: .user)
        try container.encode(shareText, forKey: .shareText)
        try container.encode(createdAt, forKey: .createdAt)
    }
}

