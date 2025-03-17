Rails.application.routes.draw do
  namespace :api do
    post "create", to: "errorlogger#create"
    get "index", to: "errorlogger#index"
    get "get_by_service_name/:name", to: "errorlogger#get_by_service_name"
    get "geterrormessage_by_id/:id", to: "errorlogger#geterrormessage_by_id"
  end
end
