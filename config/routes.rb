Rails.application.routes.draw do
  get "issue4/show"
  resource :session
  resources :passwords, param: :token

  get "jogo" => "board#show", as: :board

  get "pergunta1" => "issue1#new", as: :issue1_new
  post "pergunta1" => "issue1#create", as: :issue1

  get "pergunta2" => "issue2#new", as: :issue2_new
  post "pergunta2" => "issue2#create", as: :issue2

  get "pergunta3" => "issue3#new", as: :issue3_new
  post "pergunta3" => "issue3#create", as: :issue3

  get "pergunta4" => "issue4#new", as: :issue4_new
  post "pergunta4" => "issue4#create", as: :issue4

  get "pergunta5" => "issue5#new", as: :issue5_new
  post "pergunta5" => "issue5#create", as: :issue5

  get "pergunta6" => "issue6#new", as: :issue6_new
  post "pergunta6" => "issue6#create", as: :issue6
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
