class PlanningsController < ApplicationController
  def index
    @instances = instances
  end

  def create
    instance = Instance.find(params[:id])
    session[:instances] = instances_ids.push(instance.id) unless instances_ids.include?(instance.id)
    redirect_back fallback_location: root_path, notice: "Successfully picked instance #{instance.code}"
  end

  def destroy
    instance = Instance.find(params[:id])
    session[:instances] = instances_ids - [instance.id]
    redirect_back fallback_location: root_path, notice: "Successfully unpicked instance #{instance.code}"
  end

  private

  def instances_ids
    session[:instances] || []
  end

  def instances
    instances_ids.map do |id|
      Instance.find(id)
    end
  end
end
