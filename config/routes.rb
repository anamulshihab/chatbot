Rails.application.routes.draw do
  get 'ask_chiquito', to: 'application#ask_chiquito'

  root to: 'high_voltage/pages#show', id: 'index'

  get 'ask_estonian',to: 'application#ask_estonian'
 	redirect to: 'high_voltage/pages#show', id: 'about'

end
