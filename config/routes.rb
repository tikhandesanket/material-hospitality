Rails.application.routes.draw do
  scope "(:locale)",locale: /#{I18n.available_locales.join("|")}/ do
    devise_for :users
    root "dashboard#index"
  end
end
# https://www.uday.net/add-bootstrap-5-to-an-existing-Rails-7-app