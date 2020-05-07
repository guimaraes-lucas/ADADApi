# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ClassPlansController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/class_plans').to route_to('class_plans#index')
    end

    it 'routes to #show' do
      expect(get: '/class_plans/1').to route_to('class_plans#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/class_plans').to route_to('class_plans#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/class_plans/1').to route_to('class_plans#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/class_plans/1').to route_to('class_plans#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/class_plans/1').to route_to('class_plans#destroy', id: '1')
    end
  end
end
