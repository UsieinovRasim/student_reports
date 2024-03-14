# frozen_string_literal: true

class StudentsController < ApplicationController
  before_action :set_student, only: %i[show edit update destroy]
  before_action :authenticate_user!

  def index
    @students = Student.order(id: :asc)
  end

  def show; end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      redirect_to @student, notice: 'Студент успешно создан.'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @student.update(student_params)
      redirect_to student_path
    else
      render :edit
    end
  end

  def destroy
    @student.destroy
    redirect_to students_path
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name, :email)
  end
end
