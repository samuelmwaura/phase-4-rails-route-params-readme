Rails.application.routes.draw do
  get 'cheeses', to: 'cheeses#index' #the index is the method in the controller that runs when this route ins invoked
  get 'cheeses/:id', to: 'cheeses#show' #Here we turn to dynamic routes. Our show method is dynamic too and renders details of the app whose address is passed asa parameter to the url
end
