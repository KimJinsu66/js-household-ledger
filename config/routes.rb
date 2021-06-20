Rails.application.routes.draw do
  resources :deposite_and_withdrawal_categories
  resources :user_household_ledgers
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
