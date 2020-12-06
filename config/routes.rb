Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  scope module: "api" do
    namespace :v1 do
      resources :jobs do
        resources :applies
      end
      resources :companies do
        resources :jobs
      end
      resources :geeks do
        resources :applies
      end
      resources :applies
    end
    namespace :v2 do
      resources :appartments
      resources :resorts do
        resources :apartments
      end
    end
  end

  match "*path", to: "application#catch_404", via: :all
end
