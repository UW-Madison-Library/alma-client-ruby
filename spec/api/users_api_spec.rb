=begin
#Alma API

#This web service provides a RESTful interface to Alma.

OpenAPI spec version: 1.0.0
Contact: andy.goodnough@wisc.edu
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for AlmaClient::UsersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UsersApi' do
  before do
    # run before each test
    @instance = AlmaClient::UsersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsersApi' do
    it 'should create an instance of UsersApi' do
      expect(@instance).to be_instance_of(AlmaClient::UsersApi)
    end
  end

  # unit tests for get_user_details
  # Get user details
  # Returns a specific user&#39;s details
  # @param user_id Id of user to retrieve
  # @param [Hash] opts the optional parameters
  # @return [User]
  describe 'get_user_details test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
