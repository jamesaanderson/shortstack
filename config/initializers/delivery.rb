if Rails.env.production?
  DELIVERY_CLIENT = Delivery::Client.new ENV['DELIVERY_KEY']
else
  DELIVERY_CLIENT = Delivery::Client.new ENV['DELIVERY_KEY'], base_uri: 'http://sandbox.delivery.com'
end
