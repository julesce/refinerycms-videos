Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :videos do
    resources :videos, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :videos, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :videos, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
