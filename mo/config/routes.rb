Mo::Application.routes.draw do
  resources :moshikomis ,:except =>['index']  do
    collection  do 
      get 'start'
      get 'search'
    end
  end
  match 'moshikomis' => 'moshikomis#start', :via =>:get,:as =>'moshikomi'
  root :to => "moshikomis#start"
end
