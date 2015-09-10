Rails.application.routes.draw do
  resources :boards, only: [:index, :show], constraints: {id: /[0-9]+/}
  root 'boards#index'

  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :boards, except: [:new, :edit], constraints: {id: /[0-9]+/} do
        resources :groups, only: [:index, :show]
      end
      resources :groups, except: [:new, :edit], constraints: {id: /[0-9]+/} do
        resources :tasks, only: [:index, :show]
      end
      resources :tasks, except: [:new, :edit], constraints: {id: /[0-9]+/}
    end
  end
end
