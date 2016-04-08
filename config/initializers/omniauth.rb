Rails.application.config.middleware.use OmniAuth::Builder do
      provider :facebook, ENV['APP_KEY'], ENV['APP_SECRET']
    end

# replace app_key and app_secret with keys received from facebook