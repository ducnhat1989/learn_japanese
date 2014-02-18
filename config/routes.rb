LearnJapanese::Application.routes.draw do
  root  'static_pages#home'
  devise_for :users
  devise_scope :user do
    get "sign_up", to: "devise/registrations#new"
    get "sign_in", to: "devise/sessions#new"
  end
end
