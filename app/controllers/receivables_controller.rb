# frozen_string_literal: true

# class controller of receivable entity
class ReceivablesController < ApplicationController
  before_action :set_receivable, only: [:show, :update, :destroy]

  # GET /receivables
  def index
    @receivables = Receivable.all

    render json: @receivables
  end

  # GET /receivables/1
  def show
    render json: @receivable
  end

  # POST /receivables
  def create
    @receivable = Receivable.new(receivable_params)

    if @receivable.save
      render json: @receivable, status: :created, location: @receivable
    else
      render json: @receivable.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /receivables/1
  def update
    if @receivable.update(receivable_params)
      render json: @receivable
    else
      render json: @receivable.errors, status: :unprocessable_entity
    end
  end

  # DELETE /receivables/1
  def destroy
    @receivable.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_receivable
    @receivable = Receivable.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def receivable_params
    params.require(:receivable).permit(:bill_id, :person_id)
  end
end
