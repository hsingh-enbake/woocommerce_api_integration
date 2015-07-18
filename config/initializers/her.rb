Her::API.setup :url => "https://evening-hollows-1676.herokuapp.com" do |c|

      # OAuth

      c.use WoocommerceAuth

      # Request

      c.use WoocommerceToken

      c.use Faraday::Request::Multipart

      c.use Faraday::Request::UrlEncoded

      c.use FaradayMiddleware::EncodeJson

      # Response

      c.use Her::Middleware::DefaultParseJSON

      # Adapter

     c.use Faraday::Adapter::NetHttp

    end