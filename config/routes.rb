Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "hot_reads#index"
  resources :hot_reads, only: [:index]
end
