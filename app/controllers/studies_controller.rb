class StudiesController < ApplicationController
  before_action :set_study, only: [:show, :edit, :update, :destroy]
  before_action :load_establishments, only: [:new, :create, :edit, :update]

  def new
    @study = Study.new
  end

  def show
  end

  def edit
  end

  def create
    @study = Study.new(study_params)
    if @study.save
      redirect_to @study, notice: 'Study was successfully created.'
    else
      render :new
    end
  end

  def update
    if @study.update(study_params)
      redirect_to @study, notice: 'Study was successfully updated.'
    else
      render :new
    end
  end

  def destroy
    @study.destroy
    redirect_to @study.establishment
  end

  private

  def study_params
    params.require(:study).permit(:name, :credits, :semester, :establishment_id)
  end

  def load_establishments
    @establishments = Establishment.all
  end

  def set_study
    # TODO: Check that the study is in current establishment
    @study = Study.find(params[:id])
  end
end
