class ProductsController < ApplicationController

	def index
		
	end

	def create
	    conn = Faraday.new
	    token = conn.basic_auth(params[:product][:consumer_key], params[:product][:consumer_secret])
	    RequestStore.store[:woocommerce_token] = token
	    @response = ::Woocommerce::Product.all.fetch.first.product[1]
		success_message = "Successfully added Woocommerce. Your products are downloading. #{I18n.t('business.download.store')}"
	    render 'index'
	end

    
end
