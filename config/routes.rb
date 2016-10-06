Rails.application.routes.draw do
  get 'sales/index'

  get 'admin/index'

  devise_for :users
  root 'static_pages#index'
end
