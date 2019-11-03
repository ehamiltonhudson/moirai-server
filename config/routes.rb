Rails.application.routes.draw do
  resources :api do
    resources :v1 do
      resources :decks
      resources :arcanas
      resources :cards
    end
  end
end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
