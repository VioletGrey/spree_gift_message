Spree::Order.class_eval do
  has_one :gift_message

  def gift_message_text
    if gift_message.blank?
      ""
    else
      gift_message.message
    end
  end
end