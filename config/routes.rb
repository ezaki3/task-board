Rails.application.routes.draw do
  namespace :api, { format: 'json' } do
    namespace :v1 do
      resources :groups
      resources :tasks, except: [:new, :edit]
    end
  end
end
