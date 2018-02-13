Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :proyects, :users, :acta, :compromisos, :cronogramas, :entregables, :funcionalidads, :tareas, :user_proyects
  # devise_for :user, :controllers => { :registrations => "user/registrations" }
end
