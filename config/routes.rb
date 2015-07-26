Rails.application.routes.draw do
  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :groups, except: [:new, :edit], constraints: {id: /[0-9]+/}
      resources :tasks, except: [:new, :edit], constraints: {id: /[0-9]+/}
    end
  end
end
