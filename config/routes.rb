Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do

      get "horses/random_choose" => "horses#random_choose"
      get "horses/:id" => "horses#show"

      
      resources :horses
    end
  end
end
