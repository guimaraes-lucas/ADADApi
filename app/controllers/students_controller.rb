# frozen_string_literal: true

# class controller of student entity
class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :update, :destroy]

  # GET /students
  def index
    @students = Student.all

    render json: @students
  end

  # GET /students/1
  def show
    render json: @student,
           include: [:person,
                     :classroom,
                     :responsibles,
                     :grades,
                     :teachers]
  end

  # POST /students
  def create
    @student = Student.new(student_params)

    if @student.save
      render json: @student, status: :created, location: @student
    else
      render json: @student.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /students/1
  def update
    if @student.update(student_params)
      render json: @student
    else
      render json: @student.errors, status: :unprocessable_entity
    end
  end

  # DELETE /students/1
  def destroy
    @student.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(
      :person_id,
      :documents,
      :studying,
      :grade,
      :schooling,
      :blood_type,
      :baptized_in_water,
      :baptized_in_holy_spirit,
      :sunday_school_student,
      :developing_activity_in_the_church,
      :can_swim,
      :comments,
      :classroom_id,
      :resposibles,
      :congregational_histories,
      :medical_records,
      :grades,
      :teachers
)
  end
end
