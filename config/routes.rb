Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/display-tasklist' => 'tasklist#display_tasklist'
  get '/tasklist-details/:id' => 'tasklist#tasklist_details'
  get '/task-details/:id/:task_list_id' => 'tasklist#task_details'

  root to: 'tasklist#display_tasklist'
end
