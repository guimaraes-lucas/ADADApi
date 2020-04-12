# frozen_string_literal: true

require 'rails_helper'

RSpec.describe WalletStudentsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/wallet_students').to route_to('wallet_students#index')
    end

    it 'routes to #show' do
      expect(get: '/wallet_students/1').to route_to('wallet_students#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/wallet_students').to route_to('wallet_students#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/wallet_students/1').to route_to('wallet_students#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/wallet_students/1').to route_to('wallet_students#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/wallet_students/1').to route_to('wallet_students#destroy', id: '1')
    end
  end
end
