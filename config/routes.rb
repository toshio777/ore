Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      
      get "/horses/:id" => "horses#show"
      resources :horses



    end
  end
end
