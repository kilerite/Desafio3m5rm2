class MoviesController < ApplicationController
 
  def index
    if params[:letter]
      uppercase_letter = params[:letter].upcase
      lowercase_letter = params[:letter].downcase
      @movies = Movie.where("name LIKE ? OR name LIKE ?", "#{uppercase_letter}%", "#{lowercase_letter}%")
    else
      @movies = Movie.all
    end
  end

 
  def new
    @movie = Movie.new
  end

 
 
  def create
    @movie = Movie.new(movie_params)
  
    if @movie.save
      redirect_to movies_path
    else
      render :new
    end

  end

  private

  def movie_params
    params.require(:movie).permit(:name, :synopsis, :director)
  end

end

