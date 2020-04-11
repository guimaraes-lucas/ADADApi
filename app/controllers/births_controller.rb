# frozen_string_literal: true

# class controller of birth entity
class BirthsController < ApplicationController
  before_action :set_birth, only: [:show, :update, :destroy]

  # GET /births
  def index
    @births = Birth.all

    render json: @births
  end

  # GET /births/1
  def show
    render json: @birth
  end

  # POST /births
  def create
    @birth = Birth.new(birth_params)

    if @birth.save
      render json: @birth, status: :created, location: @birth
    else
      render json: @birth.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /births/1
  def update
    if @birth.update(birth_params)
      render json: @birth
    else
      render json: @birth.errors, status: :unprocessable_entity
    end
  end

  # DELETE /births/1
  def destroy
    @birth.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_birth
    @birth = Birth.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def birth_params
    params.require(:birth).permit(:date, :certificate, :address_id)
  end
end
