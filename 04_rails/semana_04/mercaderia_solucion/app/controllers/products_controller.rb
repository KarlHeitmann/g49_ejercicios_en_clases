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
      flash[:success] = "Producto creado exitosamente"
    else
      flash[:danger] = "Errores al crear el producto"
    end
    redirect_to products__path # HACK ERROR
  end

  private
    def product_params
      params.require(:product).permit(:nombre, :descripcion, :codigo_de_barra)
    end
end
