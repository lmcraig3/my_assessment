Rails.application.routes.draw do
  get"/assessment" => "application#show"
  get "/assessment/:id" => "application#show"
  get '/new_assessment' => 'application#new'
  get '/create_assessment' => 'application#create'
  get '/assessment/:id/edit' => 'application#edit'
  get '/update_assessment/:id' => 'application#update'
  get '/assessment/:id/destroy' => 'application#destroy'
  get '/assessment' => 'application#index'
end
