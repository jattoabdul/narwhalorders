Rails.application.routes.draw do
  # Sidekiq GUI for job monitoring
  if Rails.env.development?
    require 'sidekiq/web'
    require 'sidekiq-scheduler/web'
    mount Sidekiq::Web => '/sidekiq'
  end
  # ShopifyApp for shopify integrations
  mount ShopifyApp::Engine, at: '/'

  root :to => 'home#index'
end
