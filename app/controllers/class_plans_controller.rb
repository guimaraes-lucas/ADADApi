# frozen_string_literal: true

# class controller of ClassPlans entity
class ClassPlansController < ApplicationController
  before_action :set_class_plan, only: [:show, :update, :destroy]

  # GET /class_plans
  def index
    @class_plans = ClassPlan.all

    render json: @class_plans
  end

  # GET /class_plans/1
  def show
    render json: @class_plan, include: [:class_deployments, :class_resources, :teachers]
  end

  # POST /class_plans
  def create
    @class_plan = ClassPlan.new(class_plan_params)

    if @class_plan.save
      render json: @class_plan, status: :created, location: @class_plan
    else
      render json: @class_plan.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /class_plans/1
  def update
    if @class_plan.update(class_plan_params)
      render json: @class_plan
    else
      render json: @class_plan.errors, status: :unprocessable_entity
    end
  end

  # DELETE /class_plans/1
  def destroy
    @class_plan.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_class_plan
    @class_plan = ClassPlan.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def class_plan_params
    params.require(:class_plan).permit(
      :title,
      :date,
      :theme,
      :versicle,
      :objective,
      :content,
      :activity,
      :challenge,
      :appraisal,
      :class_deployments,
      :class_resources,
      :teachers
    )
  end
end
