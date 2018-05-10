class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to @dose, notice: 'cocktail was successfully created.'
    else
      render :new
    end

    def delete
    end
  end


