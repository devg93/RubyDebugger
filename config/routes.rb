Rails.application.routes.draw do
  namespace :api do
    post "create", to: "errorlogger#create"
    get "getall", to: "errorlogger#getall"
    get "get_by_service_name/:name", to: "errorlogger#get_by_service_name"
    get "geterrormessage_by_id/:id", to: "errorlogger#geterrormessage_by_id"
    get "show", to: "errorlogger#show"
  end
end
