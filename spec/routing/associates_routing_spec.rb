# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AssociatesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/associates').to route_to('associates#index')
    end

    it 'routes to #show' do
      expect(get: '/associates/1').to route_to('associates#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/associates').to route_to('associates#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/associates/1').to route_to('associates#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/associates/1').to route_to('associates#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/associates/1').to route_to('associates#destroy', id: '1')
    end
  end
end
