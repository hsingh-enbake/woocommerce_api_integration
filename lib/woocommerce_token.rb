class WoocommerceToken < Faraday::Middleware
  def call(env)
    env[:request_headers]['Authorization'] = "#{RequestStore.store[:woocommerce_token]}"
    @app.call(env)
  end
end
