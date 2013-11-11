Rxngif::Application.routes.draw do
  # Routes for the Photo resource:
  # CREATE
  get '/photos/new', controller: 'photos', action: 'new', :as => 'new_photo'
  post '/photos', controller: 'photos', action: 'create'

  # READ
  get '/photos', controller: 'photos', action: 'index'
  get '/photos/:id', controller: 'photos', action: 'show', :as => 'photo'

  # UPDATE
  get '/photos/:id/edit', controller: 'photos', action: 'edit', :as => 'edit_photo'
  patch '/photos/:id', controller: 'photos', action: 'update'

  # DELETE
  delete '/photos/:id', controller: 'photos', action: 'destroy'
  #------------------------------

  #CREATE
  get("/picture/new", { :controller => "pictures", :action => "new", :as => "new_post"})
  post("/pictures", { :controller => "pictures", :action => "create", :as => "posts" })

  #READ
  get("/pictures", { :controller => "pictures", :action => "index" })
  get("/pictures/:id", { :controller => "pictures", :action => "show", :as => "post"})

  #UPDATE
  get("/pictures/:id/edit", { :controller => "pictures", :action => "edit", :as => "edit_post"})
  patch("/pictures/:id", { :controller => "pictures", :action => "update" })

  #DELETE
  delete("/pictures/:id", { :controller => "pictures", :action => "destroy"})
end
