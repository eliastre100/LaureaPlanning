class EstablishmentsController < ApplicationController
  before_action :set_establishment, only: [:show, :edit, :update, :destroy]

  def index
    @establishments = Establishment.all
  end

  def new
    @establishment = Establishment.new
  end

  def show
  end

  def edit
  end

  def create
    @establishment = Establishment.new(establishment_params)

    if @establishment.save
      redirect_to @establishment, notice: 'Establishment was successfully created.'
    else
      render :new
    end
  end

  def update
    if @establishment.update(establishment_params)
      redirect_to @establishment, notice: 'Establishment was successfully updated.'
    else
      render :new
    end
  end

  def destroy
    @establishment.destroy
    redirect_to establishments_url
  end

  private

  def set_establishment
    @establishment = Establishment.find(params[:id])
  end

  def establishment_params
    params.require(:establishment).permit(:name)
  end
end
