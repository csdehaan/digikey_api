
require 'oauth2'


module DigiKey
  class Token

    @@token = nil

    def self.configure(client_id, client_secret)
      @@client = OAuth2::Client.new(client_id, client_secret, site: 'https://api.digikey.com', authorize_url: '/v1/oauth2/authorize', token_url: '/v1/oauth2/token')
    end

    def self.access_token
      @@token = @@client.get_token({'grant_type' => 'client_credentials'}) if @@token == nil or @@token.expired?
      return @@token.token
    end

  end
end

