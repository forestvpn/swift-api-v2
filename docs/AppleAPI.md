# AppleAPI

All URIs are relative to *https://api.forestvpn.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**verifyAppStoreReceipt**](AppleAPI.md#verifyappstorereceipt) | **POST** /purchase/apple/verify/ | App store receipt verification


# **verifyAppStoreReceipt**
```swift
    open class func verifyAppStoreReceipt(appStoreReceiptVerificationRequest: AppStoreReceiptVerificationRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

App store receipt verification

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let appStoreReceiptVerificationRequest = AppStoreReceiptVerificationRequest(receipt: 123, price: 123, currency: "currency_example") // AppStoreReceiptVerificationRequest | 

// App store receipt verification
AppleAPI.verifyAppStoreReceipt(appStoreReceiptVerificationRequest: appStoreReceiptVerificationRequest) { (response, error) in
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
 **appStoreReceiptVerificationRequest** | [**AppStoreReceiptVerificationRequest**](AppStoreReceiptVerificationRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

