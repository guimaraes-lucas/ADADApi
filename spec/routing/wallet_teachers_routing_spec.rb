# frozen_string_literal: true

require 'rails_helper'

RSpec.describe WalletTeachersController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/wallet_teachers').to route_to('wallet_teachers#index')
    end

    it 'routes to #show' do
      expect(get: '/wallet_teachers/1').to route_to('wallet_teachers#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/wallet_teachers').to route_to('wallet_teachers#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/wallet_teachers/1').to route_to('wallet_teachers#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/wallet_teachers/1').to route_to('wallet_teachers#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/wallet_teachers/1').to route_to('wallet_teachers#destroy', id: '1')
    end
  end
end
