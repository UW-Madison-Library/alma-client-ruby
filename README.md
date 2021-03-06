# alma_client

AlmaClient - the Ruby gem for the Alma API

This web service provides a RESTful interface to Alma.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0.0
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build alma_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./alma_client-1.0.0.gem
```
(for development, run `gem install --dev ./alma_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'alma_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'alma_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'alma_client'

# Setup authorization
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

## Documentation for API Endpoints

All URIs are relative to *https://api-na.hosted.exlibrisgroup.com/almaws/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AlmaClient::UsersApi* | [**get_user_details**](docs/UsersApi.md#get_user_details) | **GET** /users/{user_id} | Get user details


## Documentation for Models

 - [AlmaClient::AccountType](docs/AccountType.md)
 - [AlmaClient::Address](docs/Address.md)
 - [AlmaClient::AddressTypeCode](docs/AddressTypeCode.md)
 - [AlmaClient::AlmaError](docs/AlmaError.md)
 - [AlmaClient::CampusCode](docs/CampusCode.md)
 - [AlmaClient::CatalogerLevel](docs/CatalogerLevel.md)
 - [AlmaClient::ContactInfo](docs/ContactInfo.md)
 - [AlmaClient::CountryCode](docs/CountryCode.md)
 - [AlmaClient::Email](docs/Email.md)
 - [AlmaClient::EmailTypeCode](docs/EmailTypeCode.md)
 - [AlmaClient::Gender](docs/Gender.md)
 - [AlmaClient::JobCategory](docs/JobCategory.md)
 - [AlmaClient::NotFound](docs/NotFound.md)
 - [AlmaClient::Parameter](docs/Parameter.md)
 - [AlmaClient::ParameterTypeCode](docs/ParameterTypeCode.md)
 - [AlmaClient::ParameterValueCode](docs/ParameterValueCode.md)
 - [AlmaClient::Phone](docs/Phone.md)
 - [AlmaClient::PhoneTypeCode](docs/PhoneTypeCode.md)
 - [AlmaClient::PreferredLanguage](docs/PreferredLanguage.md)
 - [AlmaClient::RecordType](docs/RecordType.md)
 - [AlmaClient::RsLibrary](docs/RsLibrary.md)
 - [AlmaClient::RsLibraryCode](docs/RsLibraryCode.md)
 - [AlmaClient::StatusCode](docs/StatusCode.md)
 - [AlmaClient::User](docs/User.md)
 - [AlmaClient::UserBlock](docs/UserBlock.md)
 - [AlmaClient::UserBlockCode](docs/UserBlockCode.md)
 - [AlmaClient::UserGroup](docs/UserGroup.md)
 - [AlmaClient::UserIdentifier](docs/UserIdentifier.md)
 - [AlmaClient::UserIdentifierIdTypeCode](docs/UserIdentifierIdTypeCode.md)
 - [AlmaClient::UserNote](docs/UserNote.md)
 - [AlmaClient::UserNoteCode](docs/UserNoteCode.md)
 - [AlmaClient::UserRole](docs/UserRole.md)
 - [AlmaClient::UserRoleRoleTypeCode](docs/UserRoleRoleTypeCode.md)
 - [AlmaClient::UserRoleScopeCode](docs/UserRoleScopeCode.md)
 - [AlmaClient::UserRoleStatusCode](docs/UserRoleStatusCode.md)
 - [AlmaClient::UserStatistic](docs/UserStatistic.md)
 - [AlmaClient::UserStatisticCode](docs/UserStatisticCode.md)
 - [AlmaClient::UserTitle](docs/UserTitle.md)


## Documentation for Authorization


### APIKeyHeader

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

### APIKeyQueryParam

- **Type**: API key
- **API key parameter name**: apikey
- **Location**: URL query string

