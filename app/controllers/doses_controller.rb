class DosesController < ApplicationController
  before_action :find_dose, only: [:destroy]

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@dose.cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose.destroy
    redirect_to cocktail_path(params[:cocktail_id])
  end

  private

  def find_dose
    @dose = Dose.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end
end
