Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'top#index'
  post '/player/:id/done' => 'player#done',   as: 'done'
  
end
