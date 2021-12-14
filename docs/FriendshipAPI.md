# FriendshipAPI

All URIs are relative to *https://api.forestvpn.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acceptFriendshipInvitation**](FriendshipAPI.md#acceptfriendshipinvitation) | **PATCH** /friendship/invitations/{code}/ | Accept friendship invitation
[**createFriendshipInvitation**](FriendshipAPI.md#createfriendshipinvitation) | **POST** /friendship/invitations/ | Create friendship invitation
[**deleteFriend**](FriendshipAPI.md#deletefriend) | **DELETE** /friendship/friends/{id}/ | Delete friend
[**getFriend**](FriendshipAPI.md#getfriend) | **GET** /friendship/friends/{id}/ | Friend details
[**getFriendshipInvitation**](FriendshipAPI.md#getfriendshipinvitation) | **GET** /friendship/invitations/{code}/ | Friendship invitation details
[**listFriends**](FriendshipAPI.md#listfriends) | **GET** /friendship/friends/ | Get friends list
[**rejectFriendshipInvitation**](FriendshipAPI.md#rejectfriendshipinvitation) | **DELETE** /friendship/invitations/{code}/ | Reject friendship invitation


# **acceptFriendshipInvitation**
```swift
    open class func acceptFriendshipInvitation(code: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Accept friendship invitation

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let code = "code_example" // String | 

// Accept friendship invitation
FriendshipAPI.acceptFriendshipInvitation(code: code) { (response, error) in
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
 **code** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createFriendshipInvitation**
```swift
    open class func createFriendshipInvitation(perPage: Double? = nil, page: Double? = nil, completion: @escaping (_ data: FriendshipInvitation?, _ error: Error?) -> Void)
```

Create friendship invitation

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let perPage = 987 // Double |  (optional)
let page = 987 // Double |  (optional)

// Create friendship invitation
FriendshipAPI.createFriendshipInvitation(perPage: perPage, page: page) { (response, error) in
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
 **perPage** | **Double** |  | [optional] 
 **page** | **Double** |  | [optional] 

### Return type

[**FriendshipInvitation**](FriendshipInvitation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFriend**
```swift
    open class func deleteFriend(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete friend

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let id = 987 // UUID | 

// Delete friend
FriendshipAPI.deleteFriend(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFriend**
```swift
    open class func getFriend(id: UUID, completion: @escaping (_ data: Friendship?, _ error: Error?) -> Void)
```

Friend details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let id = 987 // UUID | 

// Friend details
FriendshipAPI.getFriend(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

[**Friendship**](Friendship.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFriendshipInvitation**
```swift
    open class func getFriendshipInvitation(code: String, completion: @escaping (_ data: FriendshipInvitation?, _ error: Error?) -> Void)
```

Friendship invitation details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let code = "code_example" // String | 

// Friendship invitation details
FriendshipAPI.getFriendshipInvitation(code: code) { (response, error) in
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
 **code** | **String** |  | 

### Return type

[**FriendshipInvitation**](FriendshipInvitation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFriends**
```swift
    open class func listFriends(perPage: Double? = nil, page: Double? = nil, completion: @escaping (_ data: [Friendship]?, _ error: Error?) -> Void)
```

Get friends list

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let perPage = 987 // Double |  (optional)
let page = 987 // Double |  (optional)

// Get friends list
FriendshipAPI.listFriends(perPage: perPage, page: page) { (response, error) in
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
 **perPage** | **Double** |  | [optional] 
 **page** | **Double** |  | [optional] 

### Return type

[**[Friendship]**](Friendship.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rejectFriendshipInvitation**
```swift
    open class func rejectFriendshipInvitation(code: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Reject friendship invitation

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI

let code = "code_example" // String | 

// Reject friendship invitation
FriendshipAPI.rejectFriendshipInvitation(code: code) { (response, error) in
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
 **code** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

