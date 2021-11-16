Rails.application.routes.draw do
  resources :category_joins, only: [:index, :show]
  resources :categories, only: [:index, :show]
  resources :bug_items
end
