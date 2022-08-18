Rails.application.routes.draw do
  get 'flats/index'
  get 'flats/show'
  get 'flats/edit'
  get 'flats/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "flats#index"
  resources :flats

  resources :flats do
    collection do
      get :search
    end
  end
end
