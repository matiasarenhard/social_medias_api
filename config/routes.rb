Rails.application.routes.draw do
  root to: 'api/v1/social_medias#index'

  namespace 'api', defaults: { format: :json } do
    namespace 'v1' do
      resources :social_medias
    end
  end
end
