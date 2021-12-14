# GoogleAPI

All URIs are relative to *https://api.forestvpn.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**verifyPlayStorePurchase**](GoogleAPI.md#verifyplaystorepurchase) | **POST** /purchase/google/verify/ | Play store purchase verification


# **verifyPlayStorePurchase**
```swift
    open class func verifyPlayStorePurchase(playStorePurchaseVerificationRequest: PlayStorePurchaseVerificationRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Play store purchase verification

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let playStorePurchaseVerificationRequest = PlayStorePurchaseVerificationRequest(productSku: "productSku_example", purchaseToken: "purchaseToken_example") // PlayStorePurchaseVerificationRequest | 

// Play store purchase verification
GoogleAPI.verifyPlayStorePurchase(playStorePurchaseVerificationRequest: playStorePurchaseVerificationRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **playStorePurchaseVerificationRequest** | [**PlayStorePurchaseVerificationRequest**](PlayStorePurchaseVerificationRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

