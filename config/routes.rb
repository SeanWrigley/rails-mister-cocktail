Rails.application.routes.draw do
  get 'doses/create'
  get 'doses/new'
  get 'cocktails/create'
  get 'cocktails/index'
  get 'cocktails/new'
  get 'cocktails/show'
  get 'pages/about'
  get 'pages/contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact

  resources :cocktails, only: [:create, :index, :new, :show] do
    resources :doses, only: [:create, :new]
  end
end
