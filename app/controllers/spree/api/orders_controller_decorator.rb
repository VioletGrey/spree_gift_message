module Spree
  Api::OrdersController.class_eval do
    def gift_message
      message = params['order']['message']
      find_order
      if !@order.gift_message.blank? || message.blank?
        @order.gift_message.delete
      end
      @gift_message = @order.build_gift_message(message: message)
      @gift_message.save
      render :show
    end
  end
end