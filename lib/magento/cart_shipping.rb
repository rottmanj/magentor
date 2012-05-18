module Magento
  class CartShipping < Base 
    class << self
      #cart_shipping.method
      # Set a shipping method for shopping cart
      #
      # Return: boolean
      #
      # Arguments: int quoteId - Shopping Cart Id (Quote Id)
      #            string shippingMethod - shipping method code
      #            mixed (int | string) storeView - Store view Id or code (optional)
      def method(*args)
        commit("method", *args)        
      end
      
      #cart_shipping.list
      # Get list of available shipping methods for shopping cart
      #
      # Return: array of CartShippingMethodEntity - an array with list of available shipping methods
      #
      # Arguments: int quoteId - Shopping Cart Id (Quote Id)
      #            mixed (int | string) storeView - Store view Id or code (optional)
      def list(*args)
        commit("list", *args)        
      end       
    end
  end
end