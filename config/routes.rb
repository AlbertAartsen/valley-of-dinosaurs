
  Rails.application.routes.draw do
  resources :valleys
    root "dinosaurs#index"

     resources :dinosaurs

  end
