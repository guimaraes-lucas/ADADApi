# frozen_string_literal: true

# class controller of payable entity
class PayablesController < ApplicationController
  before_action :set_payable, only: [:show, :update, :destroy]

  # GET /payables
  def index
    @payables = Payable.all

    render json: @payables
  end

  # GET /payables/1
  def show
    render json: @payable
  end

  # POST /payables
  def create
    @payable = Payable.new(payable_params)

    if @payable.save
      render json: @payable, status: :created, location: @payable
    else
      render json: @payable.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /payables/1
  def update
    if @payable.update(payable_params)
      render json: @payable
    else
      render json: @payable.errors, status: :unprocessable_entity
    end
  end

  # DELETE /payables/1
  def destroy
    @payable.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_payable
    @payable = Payable.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def payable_params
    params.require(:payable).permit(:bill_id, :person_id)
  end
end
