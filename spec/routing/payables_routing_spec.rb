# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PayablesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/payables').to route_to('payables#index')
    end

    it 'routes to #show' do
      expect(get: '/payables/1').to route_to('payables#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/payables').to route_to('payables#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/payables/1').to route_to('payables#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/payables/1').to route_to('payables#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/payables/1').to route_to('payables#destroy', id: '1')
    end
  end
end
