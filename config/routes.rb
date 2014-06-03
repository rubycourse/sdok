Sdok::Application.routes.draw do
   root 'welcome#index'
   get '/doctors/show/:id' => 'doctors#show'
end
