Rails.application.routes.draw do
  root 'boards#index'

  resources :boards, only: [:index, :show], constraints: {id: /[0-9]+/}

  namespace :api, {format: 'json'} do
    namespace :v1 do
      concern :dryrun do
        collection do
          post :dryrun, action: :dry_create
        end
        member do
          match :dryrun, action: :dry_update, via: [:patch, :put]
        end
      end

      resources :boards, except: [:new, :edit],
                constraints: {id: /[0-9]+/}, concerns: :dryrun, shallow: true do
        resources :groups, except: [:new, :edit],
                  constraints: {id: /[0-9]+/}, concerns: :dryrun do
          resources :tasks, except: [:new, :edit],
                    constraints: {id: /[0-9]+/}, concerns: :dryrun
        end
      end
    end
  end
end
