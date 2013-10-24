class CreateSpreeGiftMessage < ActiveRecord::Migration
  def change
    create_table :spree_gift_messages do |t|
      t.text :message
      t.references :order, index: true
    end
  end
end
