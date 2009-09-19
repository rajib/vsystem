class AddPriceAndCompanyIdToItems < ActiveRecord::Migration
  def self.up
    add_column :items, :price, :integer
    add_column :items, :company_id, :integer
  end

  def self.down
    remove_column :items, :company_id
    remove_column :items, :price
  end
end
