Rails.application.routes.draw do
  resources :sales
  post 'sales/import', to: 'sales#import'
  root to: "sales#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
