Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to: "rails_admin/main#dashboard"
  resources :news_items

  namespace :api do
    namespace :v1 do
      resources :news_items, only: %i(index)
    end
  end
end
