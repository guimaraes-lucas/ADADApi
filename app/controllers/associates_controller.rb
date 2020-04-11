# frozen_string_literal: true

# class controller of associates entity
class AssociatesController < ApplicationController
  before_action :set_associate, only: [:show, :update, :destroy]

  # GET /associates
  def index
    @associates = Associate.all

    render json: @associates
  end

  # GET /associates/1
  def show
    render json: @associate
  end

  # POST /associates
  def create
    @associate = Associate.new(associate_params)

    if @associate.save
      render json: @associate, status: :created, location: @associate
    else
      render json: @associate.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /associates/1
  def update
    if @associate.update(associate_params)
      render json: @associate
    else
      render json: @associate.errors, status: :unprocessable_entity
    end
  end

  # DELETE /associates/1
  def destroy
    @associate.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_associate
    @associate = Associate.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def associate_params
    params.require(:associate).permit(:student_id, :responsible_id)
  end
end
