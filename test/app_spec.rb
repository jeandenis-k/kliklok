# frozen_string_literal: true

describe App do
  it 'returns hello world' do
    response = mock_request.get('/')
    expect(response.body).to be == 'Hello World'
  end
end
