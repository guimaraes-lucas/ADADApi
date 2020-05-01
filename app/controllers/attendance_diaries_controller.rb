# frozen_string_literal: true

# class controller of AttendanceDiaries entity
class AttendanceDiariesController < ApplicationController
  before_action :set_attendance_diary, only: [:show, :update, :destroy]

  # GET /attendance_diaries
  def index
    @attendance_diaries = AttendanceDiary.all

    render json: @attendance_diaries, include: [{ student: { only: :name } },
                                                { lesson: { only: [:description, :date] } },
                                                { discipline: { only: [:description,
                                                                       :begin,
                                                                       :end] } },
                                                { classroom: { only: :description } },
                                                { teacher: { only: :name } }]
  end

  # GET /attendance_diaries/1
  def show
    render json: @attendance_diary
  end

  # POST /attendance_diaries
  def create
    @attendance_diary = AttendanceDiary.new(attendance_diary_params)

    if @attendance_diary.save
      render json: @attendance_diary, status: :created, location: @attendance_diary
    else
      render json: @attendance_diary.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /attendance_diaries/1
  def update
    if @attendance_diary.update(attendance_diary_params)
      render json: @attendance_diary
    else
      render json: @attendance_diary.errors, status: :unprocessable_entity
    end
  end

  # DELETE /attendance_diaries/1
  def destroy
    @attendance_diary.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_attendance_diary
    @attendance_diary = AttendanceDiary.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def attendance_diary_params
    params.require(:attendance_diary).permit(:student_id, :lesson_id, :is_present)
  end
end
