module Magento
  class CartCustomer < Base 
    class << self
      #cart_customer.set
      # Add Customer Information into shopping cart
      #
      # Return: boolean
      #
      # Arguments: int quoteId - Shopping Cart Id (Quote Id)
      #            CartCustomerEntity customerData - an associative array with customer information
      #            mixed (int | string) storeView - Store view Id or code (optional)
      def set(*args)
        commit("set", *args)        
      end
      
      #cart_customer.addresses
      # Set customer’s addresses (shipping, billing) in shopping cart
      #
      # Return: boolean
      #
      # Arguments: int quoteId - Shopping Cart Id (Quote Id)
      #            array of CartCustomerAddressEntity customerAddressData - an array with list of CartCustomerAddressEntity
      #            mixed (int | string) storeView - Store view Id or code (optional)
      def addresses(*args)
        commit("addresses", *args)
      end
    end
  end
end