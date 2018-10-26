# AlmaClient::UsersApi

All URIs are relative to *http://api-na.hosted.exlibrisgroup.com/almaws/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_user_details**](UsersApi.md#get_user_details) | **GET** /users/{user_id} | Get user details


# **get_user_details**
> User get_user_details(user_id)

Get user details

Returns a specific user's details

### Example
```ruby
# load the gem
require 'alma_client'
# setup authorization
AlmaClient.configure do |config|
  # Configure API key authorization: APIKeyHeader
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = AlmaClient::UsersApi.new

user_id = 'user_id_example' # String | Id of user to retrieve


begin
  #Get user details
  result = api_instance.get_user_details(user_id)
  p result
rescue AlmaClient::ApiError => e
  puts "Exception when calling UsersApi->get_user_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| Id of user to retrieve | 

### Return type

[**User**](User.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml



