class HomeController < ApplicationController
  before_filter :new_items

  def index
    
  end

  def about_us
    
  end

  def contact_us
    
  end

  def support
    
  end

  def careers
    
  end

protected
  def new_items
    @new_items = Item.find(:all, :order => "created_at DESC", :limit => 3)
    @all_new_items = Item.find(:all, :order => "created_at DESC")
  end
end
