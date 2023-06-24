class CeriesController < ApplicationController
   def index
    if params[:letter]
      uppercase_letter = params[:letter].upcase
      lowercase_letter = params[:letter].downcase
      @ceries = Cerie.where("name LIKE ? OR name LIKE ?", "#{uppercase_letter}%", "#{lowercase_letter}%")
    else
      @ceries = Cerie.all
    end
  end

   def new
    @cerie = Cerie.new
  end

  def create
    @cerie = Cerie.new(cerie_params)
  
    if @cerie.save
      redirect_to ceries_path
    else
      render :new
    end

  end

  private

  def cerie_params
    params.require(:cerie).permit(:name, :synopsis, :director)
  end

end

