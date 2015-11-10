Rails.application.routes.draw do

    delete 'pictures/:id' => 'pictures#destroy', as: "delete_picture"
        
    root 'pictures#index'

    resources :pictures
    # get 'pictures' => 'pictures#index'

    # post 'pictures' => 'pictures#create'
    # get 'pictures/new' => 'pictures#new'

    # get 'pictures/:id' => 'pictures#show' , as: 'picture'

    # get 'pictures/:id/edit' => "pictures#edit", as: "edit_picture"
    patch 'picture/:id' => "pictures#update"

  
end
