Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      namespace :admin do
        resources :portals, only: %i[ create ] do
          collection do
            get :company_info
          end
          resources :brands, only: %i[ create ]
        end
      end
    end
  end
end
