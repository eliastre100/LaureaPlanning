class EditionsController < ApplicationController
  def create
    session[:editable] = true
    redirect_back fallback_location: root_path, notice: 'Edition enabled'
  end

  def destroy
    session[:editable] = false
    redirect_back fallback_location: root_path, notice: 'Edition disabled'
  end
end
