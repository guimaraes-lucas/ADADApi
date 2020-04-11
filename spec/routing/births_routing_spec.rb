# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BirthsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/births').to route_to('births#index')
    end

    it 'routes to #show' do
      expect(get: '/births/1').to route_to('births#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/births').to route_to('births#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/births/1').to route_to('births#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/births/1').to route_to('births#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/births/1').to route_to('births#destroy', id: '1')
    end
  end
end
