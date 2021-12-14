# BillingAPI

All URIs are relative to *https://api.forestvpn.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listBillingFeatures**](BillingAPI.md#listbillingfeatures) | **GET** /billing/features/ | Billing feature list


# **listBillingFeatures**
```swift
    open class func listBillingFeatures(completion: @escaping (_ data: [BillingFeature]?, _ error: Error?) -> Void)
```

Billing feature list

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI


// Billing feature list
BillingAPI.listBillingFeatures() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**[BillingFeature]**](BillingFeature.md)

### Authorization

[bearerAuth](../README.md#bearerAuth), [wireguardAuth](../README.md#wireguardAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

