# WireguardAPI

All URIs are relative to *https://api.forestvpn.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getWireGuardPeerInfo**](WireguardAPI.md#getwireguardpeerinfo) | **GET** /wireguard/peers/{pubKey}/ | Wireguard peer info
[**listWireGuardPeers**](WireguardAPI.md#listwireguardpeers) | **GET** /wireguard/peers/ | Wireguard peers list


# **getWireGuardPeerInfo**
```swift
    open class func getWireGuardPeerInfo(pubKey: String, completion: @escaping (_ data: WireGuardPeerInfo?, _ error: Error?) -> Void)
```

Wireguard peer info

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let pubKey = "pubKey_example" // String | 

// Wireguard peer info
WireguardAPI.getWireGuardPeerInfo(pubKey: pubKey) { (response, error) in
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
 **pubKey** | **String** |  | 

### Return type

[**WireGuardPeerInfo**](WireGuardPeerInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWireGuardPeers**
```swift
    open class func listWireGuardPeers(completion: @escaping (_ data: [WireGuardPeerInfo]?, _ error: Error?) -> Void)
```

Wireguard peers list

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI


// Wireguard peers list
WireguardAPI.listWireGuardPeers() { (response, error) in
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

[**[WireGuardPeerInfo]**](WireGuardPeerInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

