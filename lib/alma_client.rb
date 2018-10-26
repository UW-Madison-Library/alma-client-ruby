=begin
#Alma API

#This web service provides a RESTful interface to Alma.

OpenAPI spec version: 1.0.0
Contact: andy.goodnough@wisc.edu
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

# Common files
require 'alma_client/api_client'
require 'alma_client/api_error'
require 'alma_client/version'
require 'alma_client/configuration'

# Models
require 'alma_client/models/account_type'
require 'alma_client/models/alma_error'
require 'alma_client/models/campus_code'
require 'alma_client/models/cataloger_level'
require 'alma_client/models/gender'
require 'alma_client/models/job_category'
require 'alma_client/models/not_found'
require 'alma_client/models/preferred_language'
require 'alma_client/models/record_type'
require 'alma_client/models/status'
require 'alma_client/models/user'
require 'alma_client/models/user_group'
require 'alma_client/models/user_title'

# APIs
require 'alma_client/api/users_api'

module AlmaClient
  class << self
    # Customize default settings for the SDK using block.
    #   AlmaClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end