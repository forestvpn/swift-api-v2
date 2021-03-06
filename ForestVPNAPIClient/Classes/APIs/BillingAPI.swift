//
// BillingAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class BillingAPI {

    /**
     Billing feature list
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listBillingFeatures(apiResponseQueue: DispatchQueue = ForestVPNAPIAPI.apiResponseQueue, completion: @escaping ((_ data: [BillingFeature]?, _ error: Error?) -> Void)) {
        listBillingFeaturesWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Billing feature list
     - GET /billing/features/
     - BASIC:
       - type: http
       - name: bearerAuth
     - API Key:
       - type: apiKey Authorization 
       - name: wireguardAuth
     - returns: RequestBuilder<[BillingFeature]> 
     */
    open class func listBillingFeaturesWithRequestBuilder() -> RequestBuilder<[BillingFeature]> {
        let localVariablePath = "/billing/features/"
        let localVariableURLString = ForestVPNAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[BillingFeature]>.Type = ForestVPNAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
