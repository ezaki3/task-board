Rails.application.routes.draw do
  root 'boards#index'

  resources :boards, only: [:index, :show], constraints: {id: /[0-9]+/}

  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :boards, except: [:new, :edit], constraints: {id: /[0-9]+/}, shallow: true do
        resources :groups, except: [:new, :edit], constraints: {id: /[0-9]+/} do
          resources :tasks, except: [:new, :edit], constraints: {id: /[0-9]+/}
        end
      end
    end
  end
end
