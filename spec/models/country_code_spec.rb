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
require 'date'

# Unit tests for AlmaClient::CountryCode
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CountryCode' do
  before do
    # run before each test
    @instance = AlmaClient::CountryCode.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CountryCode' do
    it 'should create an instance of CountryCode' do
      expect(@instance).to be_instance_of(AlmaClient::CountryCode)
    end
  end
  describe 'test attribute "value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "desc"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end