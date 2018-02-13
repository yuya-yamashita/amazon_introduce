class ProductsController < ApplicationController
before_action :set_product, only: [:edit, :update, :destroy]

  def new
    @product = Product.new
    @products = Product.all
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to new_product_path(@product.site_id), notice: '作成に成功しました'
    else
      redirect_to new_product_path(@product.site_id)
    end
  end

  def update
    if @product.update(product_params)
      redirect_to new_product_path(@product.site_id), notice: 'タグの編集に成功しました'
    else
      redirect_to new_product_path(@product.site_id)
    end
  end

  def destroy
    if @product.destroy
      redirect_to new_product_path(@product.site_id), notice: 'タグを削除しました'
    else
      redirect_to new_product_path(@product.site_id), alert: 'タグの削除に失敗しました'
    end
  end

  private
  def product_params
    params.require(:product).permit(:site_id, :title, :price, :description, :image)
  end

  def set_product
    @product = Product.find(params[:id])
  end

end
