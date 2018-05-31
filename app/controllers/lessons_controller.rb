class LessonsController < ApplicationController
  before_action :load_instances, only: [:new, :create, :edit, :update]
  before_action :set_lesson, only: [:edit, :update, :destroy]

  def new
    @lesson = Lesson.new
  end

  def edit
  end

  def create
    @lesson = Lesson.new(lesson_params)

    if @lesson.save
      redirect_to @lesson.instance, notice: 'Lesson successfully created.'
    else
      render :new
    end
  end

  def update
    if @lesson.update(lesson_params)
      redirect_to @lesson.instance, notice: 'Lesson successfully updated.'
    else
      render :new
    end
  end

  def destroy
    @lesson.destroy
    redirect_to @lesson.instance, notice: 'Lesson successfully destroyed'
  end

  private

  def load_instances
    @instances = Instance.all
  end

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:start_at, :end_at, :room, :instance_id)
  end
end
