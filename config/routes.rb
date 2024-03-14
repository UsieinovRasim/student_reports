Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }

  resources :students
  resources :lab_reports

  root "lab_reports#index"
end
