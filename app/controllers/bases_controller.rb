class BasesController < ApplicationController
  before_filter :login_required
  layout 'admin'

  def show
  end

end
