Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'users#home'
  resources :users, only: [ :new, :show, :edit ]
  get 'users/:id/edit_profile', to: 'users#edit_profile'
  #これでeditのやつと同じ動きをするはず...いけなかったらまた考えよう
end
