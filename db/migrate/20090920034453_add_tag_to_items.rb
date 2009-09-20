class AddTagToItems < ActiveRecord::Migration
  def self.up
    add_column :items, :tag, :string
  end

  def self.down
    remove_column :items, :tag
  end
end
