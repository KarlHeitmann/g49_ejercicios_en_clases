class MoviesController < ApplicationController
  before_action :set_movie, only: %i[ show edit update destroy ]

  def test
  end

  # GET /movies or /movies.json
  def index
    @category = Category.find params[:category_id]
    @movies = @category.movies
  end

  # GET /movies/1 or /movies/1.json
  def show
    @category = Category.find params[:category_id]
  end

  # GET /movies/new
  def new
    @movie = Movie.new
    @category = Category.find(params[:category_id])
    @categories = Category.pluck :name, :id
  end

  # GET /movies/1/edit
  def edit
    @category = Category.find params[:category_id]
  end

  # POST /movies or /movies.json
  def create
    puts "============================"
    puts params[:movie]
    puts "============================"
    @movie = Movie.new(movie_params)
    @category = Category.find params[:category_id]
    @movie.category_id = @category.id
    # @movie.category_id = params[:category]
    respond_to do |format|
      if @movie.save
        format.html { redirect_to category_movie_path(@category.id, @movie), notice: "Movie was successfully created." }
        # format.html { redirect_to category_movie(params[:category_id], @movie), notice: "Movie was successfully created." }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movies/1 or /movies/1.json
  def update
    @category = Category.find params[:category_id]
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to category_movie_path(@category.id, @movie), notice: "Movie was successfully created." }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1 or /movies/1.json
  def destroy
    @movie.destroy
    @category = Category.find params[:category_id]
    respond_to do |format|
      format.html { redirect_to category_movies_path(@category.id), notice: "Movie was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # DRY = Don't Repeat Yourself. DRY = SECO
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_params
      params.require(:movie).permit(:titulo, :lanzamiento, :category_id)
    end
end
