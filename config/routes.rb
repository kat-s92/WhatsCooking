Rails.application.routes.draw do
  devise_for :users
  root to: "food_categories#index"
  # "components#food_categories"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # We do not have a user dashboard because the saved_recipes and saved_chefs dashboard would be the index for saved_recipes and saved_chefs (similar to booking dashboard in rent_my_shoes)
  resources :food_categories, only: %i[index] do
    resources :food_items, only: %i[index]
  end
  resources :recipes, only: %i[index show], shallow: true do
    resources :reviews, only: %i[index show create new]
    resources :recipe_steps, only: %i[index show]
  end


  resources :shopping_carts, only: %i[index show]
  resources :saved_chefs, only: %i[index create new destroy]
  resources :saved_recipes, only: %i[index create new destroy]
  get "recipes/:id/missing_items", to: "recipes#missing_items", as: "missing_items"
end
