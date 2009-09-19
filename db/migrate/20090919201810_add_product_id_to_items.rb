class AddProductIdToItems < ActiveRecord::Migration
  def self.up
    add_column :items, :product_id, :integer
  end

  def self.down
    remove_column :items, :product_id
  end
end
