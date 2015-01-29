class Api
require 'pp'
  def initialize(user)
    consumer_key = '0537e64fc2af48baa199f5d9ea187656'
    consumer_secret = '7a4eb9a0b23647619c9bd6135a47f797'
    token = 'cc9ecf7b2c98bf7132d650c47f68a453'
    secret = '99d64a453cd8f2ace01c376f21b0442f'
    user_id = user.fitbit_id # may be similar to '12345N'

    client = Fitgem::Client.new({:consumer_key => consumer_key, :consumer_secret => consumer_secret, :token => token, :secret => secret, :user_id => user_id})
    access_token = client.reconnect(token, secret)
    @client = client
    pp client.activities_on_date('today')
  end

  def activities_today
    @client.activities_on_date('today')
  end

  def user_info
    @client.user_info
  end


end
