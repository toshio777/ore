Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do

      get "horses/:id" => "horses#show"

      get "horses/random_choose" => "horses#random_choose"

      resources :horses



    end
  end
end
