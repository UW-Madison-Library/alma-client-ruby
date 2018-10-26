require 'dotenv'
require 'alma_client'

Dotenv.load

AlmaClient.configure do |config|
  config.scheme = 'https'
  config.host = 'api-na.hosted.exlibrisgroup.com'
  config.api_key['Authorization'] = ENV['ALMA_API_KEY']
  config.api_key_prefix['Authorization'] = 'apikey'
  config.debugging = true
end

users_api = AlmaClient::UsersApi.new
user = users_api.get_user_details(9027858274)
puts user.to_hash
