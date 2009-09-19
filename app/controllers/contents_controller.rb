class ContentsController < ApplicationController
  before_filter :login_required
  before_filter :find_content
  layout 'admin'

  # contents GET    /contents
  def show
    
  end

  # edit_contents GET    /contents/edit
  def edit
    
  end
  
  # PUT    /contents
  def update
    respond_to do |format|
      if @content.update_attributes(params[:content])
        flash[:notice] = 'Content was successfully updated.'
        format.html { redirect_to contents_path }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @content.errors, :status => :unprocessable_entity }
      end
    end
  end
end
