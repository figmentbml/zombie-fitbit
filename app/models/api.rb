class Api

  def initialize
    consumer_key = '0537e64fc2af48baa199f5d9ea187656'
    consumer_secret = '0537e64fc2af48baa199f5d9ea187656'
    token = 'cc9ecf7b2c98bf7132d650c47f68a453'
    secret = '99d64a453cd8f2ace01c376f21b0442f'
    user_id = '26GVQN' # may be similar to '12345N'

    client = Fitgem::Client.new({:consumer_key => consumer_key, :consumer_secret => consumer_secret, :token => token, :secret => secret, :user_id => user_id})
    access_token = client.reconnect(token, secret)
    p client.user_info
  end

end