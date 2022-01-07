class CategoryMoviesController < ApplicationController
  def add_percentage
    cm = CategoryMovie.find(params[:id])
    # 1/0
    cm.percentage = params[:percentage]
    if cm.save
      flash[:success] = "guardado"
    else
      flash[:danger] = "error"
    end
    redirect_to cm.movie
  end
end
