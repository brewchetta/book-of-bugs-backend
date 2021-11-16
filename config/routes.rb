Rails.application.routes.draw do
  resources :category_joins
  resources :categories
  resources :bug_items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
