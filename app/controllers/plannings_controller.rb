class PlanningsController < ApplicationController
  def index
    @instances = instances
  end

  def create
    session[:instances] = instances_ids.push(params[:id]) unless instances_ids.include?(params[:id])
    redirect_back fallback_location: root_path
  end

  def destroy
    session[:instances] = instances_ids - [params[:id]]
    redirect_back fallback_location: root_path
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
