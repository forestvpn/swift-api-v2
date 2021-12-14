# AuthAPI

All URIs are relative to *https://api.forestvpn.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**migrateLegacyAuth**](AuthAPI.md#migratelegacyauth) | **GET** /legacy/auth/ | Legacy auth migration
[**whoAmI**](AuthAPI.md#whoami) | **GET** /auth/whoami/ | Who am I


# **migrateLegacyAuth**
```swift
    open class func migrateLegacyAuth(completion: @escaping (_ data: LegacyAuthMigrationToken?, _ error: Error?) -> Void)
```

Legacy auth migration

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI


// Legacy auth migration
AuthAPI.migrateLegacyAuth() { (response, error) in
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

[**LegacyAuthMigrationToken**](LegacyAuthMigrationToken.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **whoAmI**
```swift
    open class func whoAmI(completion: @escaping (_ data: User?, _ error: Error?) -> Void)
```

Who am I

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ForestVPNAPI


// Who am I
AuthAPI.whoAmI() { (response, error) in
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

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

