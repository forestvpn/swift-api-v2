//
// WireguardAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class WireguardAPI {

    /**
     Wireguard peer info
     
     - parameter pubKey: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getWireGuardPeerInfo(pubKey: String, apiResponseQueue: DispatchQueue = ForestVPNAPIAPI.apiResponseQueue, completion: @escaping ((_ data: WireGuardPeerInfo?, _ error: Error?) -> Void)) {
        getWireGuardPeerInfoWithRequestBuilder(pubKey: pubKey).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Wireguard peer info
     - GET /wireguard/peers/{pubKey}/
     - BASIC:
       - type: http
       - name: bearerAuth
     - parameter pubKey: (path)  
     - returns: RequestBuilder<WireGuardPeerInfo> 
     */
    open class func getWireGuardPeerInfoWithRequestBuilder(pubKey: String) -> RequestBuilder<WireGuardPeerInfo> {
        var localVariablePath = "/wireguard/peers/{pubKey}/"
        let pubKeyPreEscape = "\(APIHelper.mapValueToPathItem(pubKey))"
        let pubKeyPostEscape = pubKeyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{pubKey}", with: pubKeyPostEscape, options: .literal, range: nil)
        let localVariableURLString = ForestVPNAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<WireGuardPeerInfo>.Type = ForestVPNAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Wireguard peers list
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listWireGuardPeers(apiResponseQueue: DispatchQueue = ForestVPNAPIAPI.apiResponseQueue, completion: @escaping ((_ data: [WireGuardPeerInfo]?, _ error: Error?) -> Void)) {
        listWireGuardPeersWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Wireguard peers list
     - GET /wireguard/peers/
     - BASIC:
       - type: http
       - name: bearerAuth
     - returns: RequestBuilder<[WireGuardPeerInfo]> 
     */
    open class func listWireGuardPeersWithRequestBuilder() -> RequestBuilder<[WireGuardPeerInfo]> {
        let localVariablePath = "/wireguard/peers/"
        let localVariableURLString = ForestVPNAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[WireGuardPeerInfo]>.Type = ForestVPNAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}