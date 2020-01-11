Rails.application.routes.draw do

  get 'sales/new', to: 'sales#new'
  post 'sales', to: 'sales#create'
  get 'sales/done'

end
