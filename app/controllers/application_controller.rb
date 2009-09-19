# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  before_filter :find_content
  before_filter :find_items
  before_filter :find_companies
  before_filter :find_products
  include Authentication
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
protected
  def find_content
    @content = Content.first
  end

  def find_items
    @items = Item.find(:all, :order => :title)
  end

  def find_companies
    @companies = Company.find(:all, :order => :title)
  end

  def find_products
    @products = Product.find(:all, :order => :title)
  end
end
