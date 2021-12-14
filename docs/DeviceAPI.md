# DeviceAPI

All URIs are relative to *https://api.forestvpn.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDevice**](DeviceAPI.md#createdevice) | **POST** /devices/ | Create new device
[**createDevicePortForwarding**](DeviceAPI.md#createdeviceportforwarding) | **POST** /devices/{deviceID}/port-forwarding/ | Create new device port forwarding
[**deleteDevice**](DeviceAPI.md#deletedevice) | **DELETE** /devices/{deviceID}/ | Delete Device
[**deleteDevicePortForwarding**](DeviceAPI.md#deletedeviceportforwarding) | **DELETE** /devices/{deviceID}/port-forwarding/{portForwardingID}/ | Delete Device&#39;s Port Forwarding
[**getDevice**](DeviceAPI.md#getdevice) | **GET** /devices/{deviceID}/ | Device Info
[**getDeviceStats**](DeviceAPI.md#getdevicestats) | **GET** /devices/{deviceID}/stats/{statsID}/ | Device&#39;s stats detail
[**getDeviceWireGuard**](DeviceAPI.md#getdevicewireguard) | **GET** /devices/{deviceID}/wireguards/{wireGuardID}/ | Device&#39;s wireguard profile detail
[**listDeviceBindings**](DeviceAPI.md#listdevicebindings) | **GET** /devices/{deviceID}/bindings/ | Device bindings
[**listDeviceConnectionModes**](DeviceAPI.md#listdeviceconnectionmodes) | **GET** /devices/{deviceID}/connection-modes/ | Device connection modes
[**listDeviceDetailStats**](DeviceAPI.md#listdevicedetailstats) | **GET** /devices/{deviceID}/detail-stats/ | Device&#39;s detail stats list
[**listDevicePortForwardings**](DeviceAPI.md#listdeviceportforwardings) | **GET** /devices/{deviceID}/port-forwarding/ | Device Port Forwarding List
[**listDeviceStats**](DeviceAPI.md#listdevicestats) | **GET** /devices/{deviceID}/stats/ | Device&#39;s stats list
[**listDeviceWireGuardPeers**](DeviceAPI.md#listdevicewireguardpeers) | **GET** /devices/{deviceID}/wireguards/{wireGuardID}/peers/ | Device&#39;s wireguard peers
[**listDeviceWireGuards**](DeviceAPI.md#listdevicewireguards) | **GET** /devices/{deviceID}/wireguards/ | Device&#39;s wireguard profiles list
[**listDevices**](DeviceAPI.md#listdevices) | **GET** /devices/ | Device List
[**updateDevice**](DeviceAPI.md#updatedevice) | **PATCH** /devices/{deviceID}/ | Update device properties
[**updateDevicePortForwarding**](DeviceAPI.md#updatedeviceportforwarding) | **PATCH** /devices/{deviceID}/port-forwarding/{portForwardingID}/ | Update device&#39;s port forwarding


# **createDevice**
```swift
    open class func createDevice(createOrUpdateDeviceRequest: CreateOrUpdateDeviceRequest? = nil, completion: @escaping (_ data: Device?, _ error: Error?) -> Void)
```

Create new device

Create new device 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let createOrUpdateDeviceRequest = CreateOrUpdateDeviceRequest(externalKey: "externalKey_example", name: "name_example", location: 123, torOver: false, connectionMode: 123, randomServer: false, info: CreateOrUpdateDeviceRequest_info(type: "type_example", info: "TODO")) // CreateOrUpdateDeviceRequest |  (optional)

// Create new device
DeviceAPI.createDevice(createOrUpdateDeviceRequest: createOrUpdateDeviceRequest) { (response, error) in
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
 **createOrUpdateDeviceRequest** | [**CreateOrUpdateDeviceRequest**](CreateOrUpdateDeviceRequest.md) |  | [optional] 

### Return type

[**Device**](Device.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDevicePortForwarding**
```swift
    open class func createDevicePortForwarding(deviceID: UUID, createOrUpdatePortForwardingRequest: CreateOrUpdatePortForwardingRequest? = nil, completion: @escaping (_ data: PortForwarding?, _ error: Error?) -> Void)
```

Create new device port forwarding

Create new device port forwarding 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let deviceID = 987 // UUID | 
let createOrUpdatePortForwardingRequest = CreateOrUpdatePortForwardingRequest(dstPort: 123) // CreateOrUpdatePortForwardingRequest |  (optional)

// Create new device port forwarding
DeviceAPI.createDevicePortForwarding(deviceID: deviceID, createOrUpdatePortForwardingRequest: createOrUpdatePortForwardingRequest) { (response, error) in
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
 **deviceID** | **UUID** |  | 
 **createOrUpdatePortForwardingRequest** | [**CreateOrUpdatePortForwardingRequest**](CreateOrUpdatePortForwardingRequest.md) |  | [optional] 

### Return type

[**PortForwarding**](PortForwarding.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDevice**
```swift
    open class func deleteDevice(deviceID: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete Device

Delete device by id 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let deviceID = 987 // UUID | 

// Delete Device
DeviceAPI.deleteDevice(deviceID: deviceID) { (response, error) in
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
 **deviceID** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDevicePortForwarding**
```swift
    open class func deleteDevicePortForwarding(deviceID: UUID, portForwardingID: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete Device's Port Forwarding

Delete device's port forwarding by id 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let deviceID = 987 // UUID | 
let portForwardingID = 987 // UUID | 

// Delete Device's Port Forwarding
DeviceAPI.deleteDevicePortForwarding(deviceID: deviceID, portForwardingID: portForwardingID) { (response, error) in
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
 **deviceID** | **UUID** |  | 
 **portForwardingID** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDevice**
```swift
    open class func getDevice(deviceID: UUID, completion: @escaping (_ data: Device?, _ error: Error?) -> Void)
```

Device Info

Retrieve device info 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let deviceID = 987 // UUID | 

// Device Info
DeviceAPI.getDevice(deviceID: deviceID) { (response, error) in
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
 **deviceID** | **UUID** |  | 

### Return type

[**Device**](Device.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeviceStats**
```swift
    open class func getDeviceStats(deviceID: UUID, statsID: UUID, completion: @escaping (_ data: DeviceStats?, _ error: Error?) -> Void)
```

Device's stats detail

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let deviceID = 987 // UUID | 
let statsID = 987 // UUID | 

// Device's stats detail
DeviceAPI.getDeviceStats(deviceID: deviceID, statsID: statsID) { (response, error) in
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
 **deviceID** | **UUID** |  | 
 **statsID** | **UUID** |  | 

### Return type

[**DeviceStats**](DeviceStats.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeviceWireGuard**
```swift
    open class func getDeviceWireGuard(deviceID: UUID, wireGuardID: UUID, completion: @escaping (_ data: WireGuard?, _ error: Error?) -> Void)
```

Device's wireguard profile detail

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let deviceID = 987 // UUID | 
let wireGuardID = 987 // UUID | 

// Device's wireguard profile detail
DeviceAPI.getDeviceWireGuard(deviceID: deviceID, wireGuardID: wireGuardID) { (response, error) in
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
 **deviceID** | **UUID** |  | 
 **wireGuardID** | **UUID** |  | 

### Return type

[**WireGuard**](WireGuard.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDeviceBindings**
```swift
    open class func listDeviceBindings(deviceID: UUID, completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

Device bindings

Each device has bindings to specific servers. This methods returns hostnames where this device binded in a particular time. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let deviceID = 987 // UUID | 

// Device bindings
DeviceAPI.listDeviceBindings(deviceID: deviceID) { (response, error) in
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
 **deviceID** | **UUID** |  | 

### Return type

**[String]**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDeviceConnectionModes**
```swift
    open class func listDeviceConnectionModes(deviceID: UUID, xAndroidPackage: String? = nil, xAndroidSHA1: String? = nil, completion: @escaping (_ data: [ConnectionMode]?, _ error: Error?) -> Void)
```

Device connection modes

This methods returns list of connection modes are availbale for current device. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let deviceID = 987 // UUID | 
let xAndroidPackage = "xAndroidPackage_example" // String |  (optional)
let xAndroidSHA1 = "xAndroidSHA1_example" // String |  (optional)

// Device connection modes
DeviceAPI.listDeviceConnectionModes(deviceID: deviceID, xAndroidPackage: xAndroidPackage, xAndroidSHA1: xAndroidSHA1) { (response, error) in
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
 **deviceID** | **UUID** |  | 
 **xAndroidPackage** | **String** |  | [optional] 
 **xAndroidSHA1** | **String** |  | [optional] 

### Return type

[**[ConnectionMode]**](ConnectionMode.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDeviceDetailStats**
```swift
    open class func listDeviceDetailStats(deviceID: UUID, dateTimeAfter: String? = nil, dateTimeBefore: String? = nil, perPage: Double? = nil, page: Double? = nil, completion: @escaping (_ data: [DeviceStats]?, _ error: Error?) -> Void)
```

Device's detail stats list

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let deviceID = 987 // UUID | 
let dateTimeAfter = "dateTimeAfter_example" // String |  (optional)
let dateTimeBefore = "dateTimeBefore_example" // String |  (optional)
let perPage = 987 // Double |  (optional)
let page = 987 // Double |  (optional)

// Device's detail stats list
DeviceAPI.listDeviceDetailStats(deviceID: deviceID, dateTimeAfter: dateTimeAfter, dateTimeBefore: dateTimeBefore, perPage: perPage, page: page) { (response, error) in
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
 **deviceID** | **UUID** |  | 
 **dateTimeAfter** | **String** |  | [optional] 
 **dateTimeBefore** | **String** |  | [optional] 
 **perPage** | **Double** |  | [optional] 
 **page** | **Double** |  | [optional] 

### Return type

[**[DeviceStats]**](DeviceStats.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDevicePortForwardings**
```swift
    open class func listDevicePortForwardings(deviceID: UUID, perPage: Double? = nil, page: Double? = nil, completion: @escaping (_ data: [PortForwarding]?, _ error: Error?) -> Void)
```

Device Port Forwarding List

Retrieve device's port forwarding lis 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let deviceID = 987 // UUID | 
let perPage = 987 // Double |  (optional)
let page = 987 // Double |  (optional)

// Device Port Forwarding List
DeviceAPI.listDevicePortForwardings(deviceID: deviceID, perPage: perPage, page: page) { (response, error) in
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
 **deviceID** | **UUID** |  | 
 **perPage** | **Double** |  | [optional] 
 **page** | **Double** |  | [optional] 

### Return type

[**[PortForwarding]**](PortForwarding.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDeviceStats**
```swift
    open class func listDeviceStats(deviceID: UUID, dateAfter: Date? = nil, dateBefore: Date? = nil, perPage: Double? = nil, page: Double? = nil, completion: @escaping (_ data: [DeviceStats]?, _ error: Error?) -> Void)
```

Device's stats list

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let deviceID = 987 // UUID | 
let dateAfter = Date() // Date |  (optional)
let dateBefore = Date() // Date |  (optional)
let perPage = 987 // Double |  (optional)
let page = 987 // Double |  (optional)

// Device's stats list
DeviceAPI.listDeviceStats(deviceID: deviceID, dateAfter: dateAfter, dateBefore: dateBefore, perPage: perPage, page: page) { (response, error) in
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
 **deviceID** | **UUID** |  | 
 **dateAfter** | **Date** |  | [optional] 
 **dateBefore** | **Date** |  | [optional] 
 **perPage** | **Double** |  | [optional] 
 **page** | **Double** |  | [optional] 

### Return type

[**[DeviceStats]**](DeviceStats.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDeviceWireGuardPeers**
```swift
    open class func listDeviceWireGuardPeers(deviceID: UUID, wireGuardID: UUID, completion: @escaping (_ data: [WireGuardPeer]?, _ error: Error?) -> Void)
```

Device's wireguard peers

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let deviceID = 987 // UUID | 
let wireGuardID = 987 // UUID | 

// Device's wireguard peers
DeviceAPI.listDeviceWireGuardPeers(deviceID: deviceID, wireGuardID: wireGuardID) { (response, error) in
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
 **deviceID** | **UUID** |  | 
 **wireGuardID** | **UUID** |  | 

### Return type

[**[WireGuardPeer]**](WireGuardPeer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDeviceWireGuards**
```swift
    open class func listDeviceWireGuards(deviceID: UUID, perPage: Double? = nil, page: Double? = nil, completion: @escaping (_ data: [WireGuard]?, _ error: Error?) -> Void)
```

Device's wireguard profiles list

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let deviceID = 987 // UUID | 
let perPage = 987 // Double |  (optional)
let page = 987 // Double |  (optional)

// Device's wireguard profiles list
DeviceAPI.listDeviceWireGuards(deviceID: deviceID, perPage: perPage, page: page) { (response, error) in
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
 **deviceID** | **UUID** |  | 
 **perPage** | **Double** |  | [optional] 
 **page** | **Double** |  | [optional] 

### Return type

[**[WireGuard]**](WireGuard.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDevices**
```swift
    open class func listDevices(externalKey: String? = nil, perPage: Double? = nil, page: Double? = nil, completion: @escaping (_ data: [Device]?, _ error: Error?) -> Void)
```

Device List

Retrieve devices list 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let externalKey = "externalKey_example" // String |  (optional)
let perPage = 987 // Double |  (optional)
let page = 987 // Double |  (optional)

// Device List
DeviceAPI.listDevices(externalKey: externalKey, perPage: perPage, page: page) { (response, error) in
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
 **externalKey** | **String** |  | [optional] 
 **perPage** | **Double** |  | [optional] 
 **page** | **Double** |  | [optional] 

### Return type

[**[Device]**](Device.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDevice**
```swift
    open class func updateDevice(deviceID: UUID, createOrUpdateDeviceRequest: CreateOrUpdateDeviceRequest, completion: @escaping (_ data: Device?, _ error: Error?) -> Void)
```

Update device properties

Update device properties 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let deviceID = 987 // UUID | 
let createOrUpdateDeviceRequest = CreateOrUpdateDeviceRequest(externalKey: "externalKey_example", name: "name_example", location: 123, torOver: false, connectionMode: 123, randomServer: false, info: CreateOrUpdateDeviceRequest_info(type: "type_example", info: "TODO")) // CreateOrUpdateDeviceRequest | 

// Update device properties
DeviceAPI.updateDevice(deviceID: deviceID, createOrUpdateDeviceRequest: createOrUpdateDeviceRequest) { (response, error) in
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
 **deviceID** | **UUID** |  | 
 **createOrUpdateDeviceRequest** | [**CreateOrUpdateDeviceRequest**](CreateOrUpdateDeviceRequest.md) |  | 

### Return type

[**Device**](Device.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDevicePortForwarding**
```swift
    open class func updateDevicePortForwarding(deviceID: UUID, portForwardingID: UUID, createOrUpdatePortForwardingRequest: CreateOrUpdatePortForwardingRequest, completion: @escaping (_ data: PortForwarding?, _ error: Error?) -> Void)
```

Update device's port forwarding

Update device's port forwarding dst_port 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let deviceID = 987 // UUID | 
let portForwardingID = 987 // UUID | 
let createOrUpdatePortForwardingRequest = CreateOrUpdatePortForwardingRequest(dstPort: 123) // CreateOrUpdatePortForwardingRequest | 

// Update device's port forwarding
DeviceAPI.updateDevicePortForwarding(deviceID: deviceID, portForwardingID: portForwardingID, createOrUpdatePortForwardingRequest: createOrUpdatePortForwardingRequest) { (response, error) in
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
 **deviceID** | **UUID** |  | 
 **portForwardingID** | **UUID** |  | 
 **createOrUpdatePortForwardingRequest** | [**CreateOrUpdatePortForwardingRequest**](CreateOrUpdatePortForwardingRequest.md) |  | 

### Return type

[**PortForwarding**](PortForwarding.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

