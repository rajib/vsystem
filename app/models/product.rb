class Product < ActiveRecord::Base
  belongs_to :company
  has_many :items

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "116x86>" }
end
