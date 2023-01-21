# frozen_string_literal: true

class App
  def initialize(realm_name:, root_url:)
    @realm_name = realm_name
    @root_url = root_url
  end

  def call(env)
    case env['PATH_INFO']
    when '/'
      [200, {}, ['Hello World']]
    when '/.well-known/realms/users/.well-known/openid-configuration'
      [
        200,
        {},
        [
          {
            issuer: URI.join(@root_url, "/realms/#{@realm_name}"),
            authorization_endpoint:
              URI.join(
                @root_url,
                "/realms/#{@realm_name}/protocol/openid-connect/auth"
              ),
            token_endpoint:
              URI.join(
                @root_url,
                "/realms/#{@realm_name}/protocol/openid-connect/token"
              ),
            userinfo_endpoint:
              URI.join(
                @root_url,
                "/realms/#{@realm_name}/protocol/openid-connect/userinfo"
              ),
            jwks_uri:
              URI.join(
                @root_url,
                "/realms/#{@realm_name}/protocol/openid-connect/certs"
              ),
            response_types_supported: ['code'],
            subject_types_supported: ['public'],
            id_token_signing_alg_values_supported: ['RS256']
          }.to_json
        ]
      ]
    end
  end
end
