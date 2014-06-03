Sdok::Application.routes.draw do
   root 'welcome#index'
   get '/sdok_five' => 'welcome#sdok_five'
   get '/doctors/show/:id' => 'doctors#show'
end
