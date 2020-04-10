# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CongregationalHistoriesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/congregational_histories').to route_to('congregational_histories#index')
    end

    it 'routes to #show' do
      expect(get: '/congregational_histories/1').to route_to('congregational_histories#show',
                                                             id: '1')
    end

    it 'routes to #create' do
      expect(post: '/congregational_histories').to route_to('congregational_histories#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/congregational_histories/1').to route_to('congregational_histories#update',
                                                             id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/congregational_histories/1').to route_to('congregational_histories#update',
                                                               id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/congregational_histories/1').to route_to('congregational_histories#destroy',
                                                                id: '1')
    end
  end
end
