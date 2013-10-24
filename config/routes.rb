Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  namespace :api, :defaults => { :format => 'json' } do
    resources :orders do
      member do
        put :gift_message
      end
    end
  end
end
