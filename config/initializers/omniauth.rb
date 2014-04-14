Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.production?
    provider :delivery, ENV['DELIVERY_KEY'], ENV['DELIVERY_SECRET']
  else
    provider :delivery, ENV['DELIVERY_KEY'], ENV['DELIVERY_SECRET'],
      client_options: {
        site: 'http://sandbox.delivery.com',
        authorize_url: 'http://sandbox.delivery.com/third_party/authorize',
        token_url: 'http://sandbox.delivery.com/third_party/access_token'
      }
  end
end
