Rails.application.routes.draw do

  root 'tasks#index'

  get 'tasks', to: 'tasks#index', as: 'tasks'
  get 'tasks/new', to: 'tasks#new'
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  post 'tasks', to: 'tasks#create'

  get 'tasks/:id/edit', to: 'tasks#edit', as: 'task_id_edit'

  patch 'tasks/:id', to: 'tasks#update'

  delete 'tasks/:id', to: 'tasks#destroy'
end
