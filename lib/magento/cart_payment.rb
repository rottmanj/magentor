module Magento
  class CartPayment < Base 
    class << self
      #cart_customer.list
      # Get list of available payment methods for shopping cart
      #
      # Return: array of CartPaymentMethodEntity - an array with list of available payment methods
      #
      # Arguments: int quoteId - Shopping Cart Id (Quote Id)
      #            mixed (int | string) storeView - Store view Id or code (optional)
      def list(*args)
        results = commit("list", *args)
        results.collect do |result|
          result
        end
      end
      
      #cart_customer.method
      # Set a payment method for shopping cart
      #
      # Return: boolean
      #
      # Arguments: int quoteId - Shopping Cart Id (Quote Id)
      #            CartPaymentMethodEntity paymentData - an associative array with payment method information
      #            mixed (int | string) storeView - Store view Id or code (optional)
      def method(*args)
        commit("method",*args)        
      end 
    end
  end
end