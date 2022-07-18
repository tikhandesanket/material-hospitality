Rails.application.routes.draw do

  scope "(:locale)",locale: /#{I18n.available_locales.join("|")}/ do
    devise_for :users
    root "dashboard#index"
    get 'user/index'
    get 'user/show'
  end
end
# https://www.uday.net/add-bootstrap-5-to-an-existing-Rails-7-app 
# git token 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   https://github.com/settings/tokens