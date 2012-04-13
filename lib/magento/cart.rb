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
    end
    
  end
end