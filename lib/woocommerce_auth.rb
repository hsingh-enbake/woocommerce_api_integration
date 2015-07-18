class WoocommerceAuth < Faraday::Middleware
  def call(env)
    env[:request_headers]["Accept"] = 'application/json'
    env[:request_headers]["Content-Type"] = RequestStore.store[:content_type].presence || 'application/json'
    @app.call(env)
  end
end
