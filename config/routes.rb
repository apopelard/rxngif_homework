Rxngif::Application.routes.draw do
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
