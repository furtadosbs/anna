Rails.application.routes.draw do
  resources :questions, only: [ :index ]
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

  get "pergunta7" => "issue7#new", as: :issue7_new
  post "pergunta7" => "issue7#create", as: :issue7

  get "pergunta8" => "issue8#new", as: :issue8_new
  post "pergunta8" => "issue8#create", as: :issue8

  get "pergunta9" => "issue9#new", as: :issue9_new
  post "pergunta9" => "issue9#create", as: :issue9

  get "pergunta10" => "issue10#new", as: :issue10_new
  post "pergunta10" => "issue10#create", as: :issue10

  get "pergunta11" => "issue11#new", as: :issue11_new
  post "pergunta11" => "issue11#create", as: :issue11

  get "pergunta12" => "issue12#new", as: :issue12_new
  post "pergunta12" => "issue12#create", as: :issue12

  get "pergunta13" => "issue13#new", as: :issue13_new
  post "pergunta13" => "issue13#create", as: :issue13

  get "pergunta14" => "issue14#new", as: :issue14_new
  post "pergunta14" => "issue14#create", as: :issue14

  get "pergunta15" => "issue15#new", as: :issue15_new
  post "pergunta15" => "issue15#create", as: :issue15

  get "pergunta16" => "issue16#new", as: :issue16_new
  post "pergunta16" => "issue16#create", as: :issue16

  get "pergunta17" => "issue17#new", as: :issue17_new
  post "pergunta17" => "issue17#create", as: :issue17

  get "pergunta18" => "issue18#new", as: :issue18_new
  post "pergunta18" => "issue18#create", as: :issue18

  get "pergunta19" => "issue19#new", as: :issue19_new
  post "pergunta19" => "issue19#create", as: :issue19

  get "pergunta20" => "issue20#new", as: :issue20_new
  post "pergunta20" => "issue20#create", as: :issue20

  get "pergunta21" => "issue21#new", as: :issue21_new
  post "pergunta21" => "issue21#create", as: :issue21
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
