class InstancesController < ApplicationController
  before_action :set_instance, only: [:show, :edit, :update, :destroy]
  before_action :load_studies, only: [:new, :create, :edit, :update]

  def new
    @instance = Instance.new
  end

  def show
  end

  def edit
  end

  def create
    @instance = Instance.new(instance_params)

    if @instance.save
      redirect_to @instance, notice: 'Intance successfully created.'
    else
      render :new
    end
  end

  def update
    if @instance.update(instance_params)
      redirect_to @instance, notice: 'Instance successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @instance.destroy
    redirect_to @instance.study, notice: 'Instance successfully destroyed'
  end

  private

  def set_instance
    @instance = Instance.find(params[:id])
  end

  def instance_params
    params.require(:instance).permit(:code, :start_at, :end_at, :study_id)
  end

  def load_studies
    @studies = Study.all
  end
end
