Rails.application.config.middleware.use OmniAuth::Builder do
  provider :wechat, ENV['WECHAT_KEY'], ENV['WECHAT_SECRET'], provider_ignores_state: true
end
