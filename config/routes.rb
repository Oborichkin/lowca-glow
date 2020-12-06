Rails.application.routes.draw do

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
  end

  resources :appartments
  resources :resorts do
    resources :appartments
  end

  post '/graphql', to: 'graphql#execute'
  get '/graphql', to: 'graphql#execute'

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  match "*path", to: "application#catch_404", via: :all
end
