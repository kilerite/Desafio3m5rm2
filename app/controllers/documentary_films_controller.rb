class DocumentaryFilmsController < ApplicationController
  def index
    if params[:letter]
      uppercase_letter = params[:letter].upcase
      lowercase_letter = params[:letter].downcase
      @dfs = Documentaryfilm.where("name LIKE ? OR name LIKE ?", "#{uppercase_letter}%", "#{lowercase_letter}%")
    else
      @dfs = Documentaryfilm.all
    end
  end

  def new
    @df = Documentaryfilm.new
  end

  def create
    @df = Documentaryfilm.new(df_params)

    if @df.save
      redirect_to documentary_films_path
    else
      render :new
    end
  end

  private

  def df_params
    params.require(:documentaryfilm).permit(:name, :synopsis, :director)
  end
end
