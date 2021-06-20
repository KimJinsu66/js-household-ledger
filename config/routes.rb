Rails.application.routes.draw do
  root to: 'homes#index'
  resources :users
  resources :household_ledgers, controller: 'user_household_ledgers'
  namespace :household_ledgers, controller: 'user_household_ledgers' do
    resources :withdrawals
    resources :deposites
  end
  resources :deposite_and_withdrawal_categories
end
