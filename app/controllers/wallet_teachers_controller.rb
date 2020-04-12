# frozen_string_literal: true

# class controller of WalletTeachers entity
class WalletTeachersController < ApplicationController
  before_action :set_wallet_teacher, only: [:show, :update, :destroy]

  # GET /wallet_teachers
  def index
    @wallet_teachers = WalletTeacher.all

    render json: @wallet_teachers
  end

  # GET /wallet_teachers/1
  def show
    render json: @wallet_teacher
  end

  # POST /wallet_teachers
  def create
    @wallet_teacher = WalletTeacher.new(wallet_teacher_params)

    if @wallet_teacher.save
      render json: @wallet_teacher, status: :created, location: @wallet_teacher
    else
      render json: @wallet_teacher.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wallet_teachers/1
  def update
    if @wallet_teacher.update(wallet_teacher_params)
      render json: @wallet_teacher
    else
      render json: @wallet_teacher.errors, status: :unprocessable_entity
    end
  end

  # DELETE /wallet_teachers/1
  def destroy
    @wallet_teacher.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_wallet_teacher
    @wallet_teacher = WalletTeacher.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def wallet_teacher_params
    params.require(:wallet_teacher).permit(:document_id, :teacher_id)
  end
end
