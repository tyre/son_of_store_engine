class ProductsController < ApplicationController
  before_filter :is_store_approved?, only: [ :show, :index ]
  caches_page :show
  def index
    @categories = store.categories
    @products = store.products.page(params[:page]).per(12)
  end

  def show
    @product = Product.find_by_id(params[:id])
    @categories = @product.categories
  end

  def create
  end

  def update
  end

  def delete
  end

end
