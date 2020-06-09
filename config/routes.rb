# frozen_string_literal: true

Rails.application.routes.draw do
  # Sidekiq GUI for job monitoring
  if Rails.env.development?
    require 'sidekiq/web'
    require 'sidekiq-scheduler/web'
    mount Sidekiq::Web => '/sidekiq'
  end

  post 'webhooks/orders_create', to: 'custom_webhook#orders_create'
  post 'webhooks/orders_paid', to: 'custom_webhook#orders_paid'

  # ShopifyApp for shopify integrations
  mount ShopifyApp::Engine, at: '/'

  root to: 'home#index'
end
