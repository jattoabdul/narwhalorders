# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CustomWebhookController, type: :controller do
  describe 'GET #order_create' do
    it 'returns http success' do
      get :order_create
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #order_paid' do
    it 'returns http success' do
      get :order_paid
      expect(response).to have_http_status(:success)
    end
  end
end
