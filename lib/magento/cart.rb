module Magento
  class Cart < Base 
    class << self      
      #cart.create
      # Create a blank shopping cart
      #
      # Return: int Shopping Card Id (Quote Id)
      #
      # Arguments: mixed (int | string) storeView - Store view Id or code (optional)
      def create(*args)
        id = commit("create", *args)
        record = info(id)
        record
      end
      
      #cart.info
      # Get full information about current shopping cart
      #
      # Return:  array (ShoppingCartEntity) - return an associate array contained information about Shopping Cart (quote)
      #
      # Arguments: int quoteId - Shopping Cart Id (Quote Id)
      #            mixed (int | string) storeView - Store view Id or code (optional)
      def info(*args)
        new(commit("info", *args))
      end
      
      #cart.totals
      # Get all available prices based on additional parameters set
      #
      # Return: array (ShoppingCartPriceEntity) - return an associate array contained information about all prices in Shopping Cart (quote)
      #
      # Arguments: int quoteId - Shopping Cart Id (Quote Id)
      #            mixed (int | string) storeView - Store view Id or code (optional)     
      def totals(*args)
        new(commit("totals", *args))
      end
      
      #cart.order
      # Create an order from shopping cart
      #
      # Return: boolean
      #
      # Arguments: int quoteId - Shopping Cart Id (Quote Id)
      #            mixed (int | string) storeView - Store view Id or code (optional)
      #            array (String) agreements - Website’s license identifiers (optional) 
      def order(*args)
        commit("order", *args)
      end
      
      def licenseAgreement(*args)
        results = commit("licenseAgreement", *args)
        results.collect do |result|
          result
        end
      end
    end    
  end
end