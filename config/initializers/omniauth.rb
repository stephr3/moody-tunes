Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, ENV['app_id'], ENV['app_secret'], scope: 'user-library-read'
end
