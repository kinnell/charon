Charon::Application.routes.draw do

	resources :service_queues, only: [:index, :show, :edit, :create, :update, :destroy] do
    get :manage, on: :member
    patch :update_workforce, on: :member
    get :edit_workforce, on: :member
    get :show_all, on: :collection
    get :admin_waiting, on: :member
    get :download_excel, on: :member, format: "xls"
  end

	resources :tickets, only: [:create, :edit, :update] do
    get :deactivate, on: :member
  end

	root to: "service_queues#index"
end
