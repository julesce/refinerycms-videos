::Refinery::Application.routes.draw do
  resources :videos, :only => [:index]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :videos, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
