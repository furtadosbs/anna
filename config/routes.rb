Rails.application.routes.draw do
  get "issue2/show"
  resource :session
  resources :passwords, param: :token

  get "jogo" => "board#show", as: :board

  get "pergunta1" => "issue1#new", as: :issue1_new
  post "pergunta1" => "issue1#create", as: :issue1

  get "pergunta2" => "issue2#new", as: :issue2_new
  post "pergunta2" => "issue2#create", as: :issue2
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "user#show"
end
