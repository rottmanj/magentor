module Magento
  class CartProduct < Base 
    class << self
      #cart_product.add
      # Add product or several products into shopping cart
      #
      # Return: boolean
      #
      # Arguments: int quoteId - Shopping Cart Id (Quote Id)
      #            array of CartProductEntity - an array with list of CartProductEntity
      #            mixed (int | string) storeView - Store view Id or code (optional)
      def add(*args)
        commit("add", *args)        
      end      
    end
  end
end