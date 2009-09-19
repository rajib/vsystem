class CreateContents < ActiveRecord::Migration
  def self.up
    create_table :contents do |t|
      t.text :home
      t.text :about_us
      t.text :support
      t.text :contact_us
      t.text :career
      t.text :latest_offer

      t.timestamps
    end

  Content.create(:home => 'change me', :about_us => 'change me', :support => 'change me', :contact_us => 'change me', :career=> 'change me', :latest_offer => 'change me')
  end

  def self.down
    drop_table :contents
  end
end
