//
// GeoAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class GeoAPI {

    /**
     Location list
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listLocations(apiResponseQueue: DispatchQueue = ForestVPNAPIAPI.apiResponseQueue, completion: @escaping ((_ data: [Location]?, _ error: Error?) -> Void)) {
        listLocationsWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Location list
     - GET /locations/
     - BASIC:
       - type: http
       - name: bearerAuth
     - returns: RequestBuilder<[Location]> 
     */
    open class func listLocationsWithRequestBuilder() -> RequestBuilder<[Location]> {
        let localVariablePath = "/locations/"
        let localVariableURLString = ForestVPNAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[Location]>.Type = ForestVPNAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}