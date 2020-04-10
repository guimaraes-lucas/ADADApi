# frozen_string_literal: true

# class controller of Congregational History entity
class CongregationalHistoriesController < ApplicationController
  before_action :set_congregational_history, only: [:show, :update, :destroy]

  # GET /congregational_histories
  def index
    @congregational_histories = CongregationalHistory.all

    render json: @congregational_histories
  end

  # GET /congregational_histories/1
  def show
    render json: @congregational_history
  end

  # POST /congregational_histories
  def create
    @congregational_history = CongregationalHistory.new(congregational_history_params)

    if @congregational_history.save
      render json: @congregational_history, status: :created, location: @congregational_history
    else
      render json: @congregational_history.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /congregational_histories/1
  def update
    if @congregational_history.update(congregational_history_params)
      render json: @congregational_history
    else
      render json: @congregational_history.errors, status: :unprocessable_entity
    end
  end

  # DELETE /congregational_histories/1
  def destroy
    @congregational_history.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_congregational_history
    @congregational_history = CongregationalHistory.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def congregational_history_params
    params.require(:congregational_history).permit(:church, :entry, :exit)
  end
end
