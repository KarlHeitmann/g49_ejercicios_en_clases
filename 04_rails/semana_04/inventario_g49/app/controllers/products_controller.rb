class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = "Exito al guardar el producto"
    else
      flash[:danger] = "Problemas al guardar el producto"
    end
    redirect_to root_path
  end

  private

  def product_params
    params.require(:product).permit(:nombre, :descripcion, :imagen_url)
  end
end
