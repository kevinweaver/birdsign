shared_context 'omniauth' do
  before(:each) do
    OmniAuth.config.mock_auth[:twitter] = OmniAuth::AuthHash.new({
      provider: 'twitter',
      uid: user[:id]
    })
  end
end
