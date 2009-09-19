class StoresController < ApplicationController
  def index
    unless request.request_uri == "/stores"
      product = params[:product][:product_id]
      company = params[:product][:company_id]

      if product == '' && company == ''
        @items = @items
      elsif product == '' && company
        @items = Item.scoped_by_company_id(company)
      elsif product && company == ''
        @items = Item.scoped_by_product_id(product)
      elsif product && company
        @items = Item.scoped_by_product_id_and_company_id(product, company)
      end
    end
  end
end
