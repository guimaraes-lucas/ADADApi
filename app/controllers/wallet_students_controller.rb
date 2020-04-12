# frozen_string_literal: true

# class controller of WalletStudents entity
class WalletStudentsController < ApplicationController
  before_action :set_wallet_student, only: [:show, :update, :destroy]

  # GET /wallet_students
  def index
    @wallet_students = WalletStudent.all

    render json: @wallet_students
  end

  # GET /wallet_students/1
  def show
    render json: @wallet_student
  end

  # POST /wallet_students
  def create
    @wallet_student = WalletStudent.new(wallet_student_params)

    if @wallet_student.save
      render json: @wallet_student, status: :created, location: @wallet_student
    else
      render json: @wallet_student.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wallet_students/1
  def update
    if @wallet_student.update(wallet_student_params)
      render json: @wallet_student
    else
      render json: @wallet_student.errors, status: :unprocessable_entity
    end
  end

  # DELETE /wallet_students/1
  def destroy
    @wallet_student.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_wallet_student
    @wallet_student = WalletStudent.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def wallet_student_params
    params.require(:wallet_student).permit(:document_id, :student_id)
  end
end
