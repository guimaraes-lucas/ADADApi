# frozen_string_literal: true

# class controller of responsible entity
class ResponsiblesController < ApplicationController
  before_action :set_responsible, only: [:show, :update, :destroy]

  # GET /responsibles
  def index
    @responsibles = Responsible.all

    render json: @responsibles
  end

  # GET /responsibles/1
  def show
    render json: @responsible, include: [:person, :students]
  end

  # POST /responsibles
  def create
    @responsible = Responsible.new(responsible_params)

    if @responsible.save
      render json: @responsible, status: :created, location: @responsible
    else
      render json: @responsible.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /responsibles/1
  def update
    if @responsible.update(responsible_params)
      render json: @responsible
    else
      render json: @responsible.errors, status: :unprocessable_entity
    end
  end

  # DELETE /responsibles/1
  def destroy
    @responsible.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_responsible
    @responsible = Responsible.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def responsible_params
    params.require(:responsible).permit(:kinship, :person_id)
  end
end
