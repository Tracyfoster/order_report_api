Rails.application.routes.draw do
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: { format: :json } do
    resources :locations, :only => [:index, :show]

    resources :products, :only => [:index, :show]

    resources :orders, :only => [:index, :show]

    resources :reports, :only => [:index, :show]
  end
end
