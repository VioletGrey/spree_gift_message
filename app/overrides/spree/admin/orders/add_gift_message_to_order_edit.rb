Deface::Override.new(:virtual_path => 'spree/admin/orders/_shipment',
  :name => 'add_gift_message_to_order_edit',
  :insert_after => "tr.show-tracking.total",
  :text => "
    <tr class='show-gift-message total'>
      <td colspan='5'>
        <%= !@order.gift_message_text.blank? ? @order.gift_message : 'No Gift Message' %>
      </td>
    </tr>
  ")