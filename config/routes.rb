Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "devise/registrations" }

  root "users#index"
end
