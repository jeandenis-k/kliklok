# frozen_string_literal: true

describe App do
  it 'returns hello world' do
    response = mock_request.get('/')
    expect(response.body).to be == 'Hello World'
  end

  describe 'well-known metadata endpoint' do
    it 'returns a description of the configuration' do
      response =
        mock_request.get(
          '/.well-known/realms/users/.well-known/openid-configuration'
        )

      expect(JSON.parse(response.body, symbolize_names: true)).to be ==
        {
          # REQUIRED FIELDS
          issuer: 'http://localhost:8000/realms/users',
          authorization_endpoint:
            'http://localhost:8000/realms/users/protocol/openid-connect/auth',
          token_endpoint:
            'http://localhost:8000/realms/users/protocol/openid-connect/token',
          # introspection_endpoint:
          # 'http://localhost:8000/realms/users/protocol/openid-connect/token/introspect',
          userinfo_endpoint:
            'http://localhost:8000/realms/users/protocol/openid-connect/userinfo',
          jwks_uri:
            'http://localhost:8000/realms/users/protocol/openid-connect/certs',
          response_types_supported: ['code'],
          subject_types_supported: ['public'],
          id_token_signing_alg_values_supported: ['RS256']
          #
          # OPTIONAL FIELDS
          # endsession_endpoint:
          #   'http://localhost:8000/realms/users/protocol/openid-connect/logout',
          # frontchannel_logout_session_supported: true,
          # frontchannel_logout_supported: true,
          # check_session_iframe:
          #   'http://localhost:8000/realms/users/protocol/openid-connect/login-status-iframe.html',
          # grant_types_supported: ['authorization_code']
        }
    end
  end
end
