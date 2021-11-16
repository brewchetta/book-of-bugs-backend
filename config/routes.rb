Rails.application.routes.draw do
  resources :categories, only: [:index, :show]
  resources :bug_items
end
