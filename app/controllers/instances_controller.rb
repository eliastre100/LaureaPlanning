class InstancesController < ApplicationController
  def new
    @instance = Instance.new
  end
end
