module Woocommerce
  class Product
    include Her::Model
    collection_path '/wc-api/v2/products'
    def initialize(fact)
      begin
        Hash fact
        super
      rescue => e
        super(product: fact)
      end
    end
  end
end