Rails.application.routes.draw do
  
  #all resources for now: can edit once workflow defined
  namespace :api do
    namespace :v1 do
      resources :departments 
      resources :employees
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
