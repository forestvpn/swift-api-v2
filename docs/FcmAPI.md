# FcmAPI

All URIs are relative to *https://api.forestvpn.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFCMDevice**](FcmAPI.md#createfcmdevice) | **POST** /notification/fcm/ | Device registration for push notification through out Firebase Cloud Messaging
[**deleteFCMDevice**](FcmAPI.md#deletefcmdevice) | **DELETE** /notification/fcm/{registrationID}/ | Delete fcm device
[**getFCMDevice**](FcmAPI.md#getfcmdevice) | **GET** /notification/fcm/{registrationID}/ | Device info
[**updateFCMDevice**](FcmAPI.md#updatefcmdevice) | **PATCH** /notification/fcm/{registrationID}/ | Update device fcm properties


# **createFCMDevice**
```swift
    open class func createFCMDevice(createFCMDeviceRequest: CreateFCMDeviceRequest, completion: @escaping (_ data: FCMDevice?, _ error: Error?) -> Void)
```

Device registration for push notification through out Firebase Cloud Messaging

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let createFCMDeviceRequest = CreateFCMDeviceRequest(registrationId: "registrationId_example", deviceId: "deviceId_example", active: false) // CreateFCMDeviceRequest | 

// Device registration for push notification through out Firebase Cloud Messaging
FcmAPI.createFCMDevice(createFCMDeviceRequest: createFCMDeviceRequest) { (response, error) in
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
 **createFCMDeviceRequest** | [**CreateFCMDeviceRequest**](CreateFCMDeviceRequest.md) |  | 

### Return type

[**FCMDevice**](FCMDevice.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFCMDevice**
```swift
    open class func deleteFCMDevice(registrationID: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete fcm device

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let registrationID = "registrationID_example" // String | 

// Delete fcm device
FcmAPI.deleteFCMDevice(registrationID: registrationID) { (response, error) in
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
 **registrationID** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFCMDevice**
```swift
    open class func getFCMDevice(registrationID: String, completion: @escaping (_ data: FCMDevice?, _ error: Error?) -> Void)
```

Device info

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let registrationID = "registrationID_example" // String | 

// Device info
FcmAPI.getFCMDevice(registrationID: registrationID) { (response, error) in
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
 **registrationID** | **String** |  | 

### Return type

[**FCMDevice**](FCMDevice.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateFCMDevice**
```swift
    open class func updateFCMDevice(registrationID: String, updateFCMDeviceRequest: UpdateFCMDeviceRequest, completion: @escaping (_ data: FCMDevice?, _ error: Error?) -> Void)
```

Update device fcm properties

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let registrationID = "registrationID_example" // String | 
let updateFCMDeviceRequest = UpdateFCMDeviceRequest(deviceId: "deviceId_example", active: false) // UpdateFCMDeviceRequest | 

// Update device fcm properties
FcmAPI.updateFCMDevice(registrationID: registrationID, updateFCMDeviceRequest: updateFCMDeviceRequest) { (response, error) in
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
 **registrationID** | **String** |  | 
 **updateFCMDeviceRequest** | [**UpdateFCMDeviceRequest**](UpdateFCMDeviceRequest.md) |  | 

### Return type

[**FCMDevice**](FCMDevice.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

