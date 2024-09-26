Rails.application.routes.draw do
  get 'users/get_users'
  mount_devise_token_auth_for 'User', at: 'auth'
end
