Rails.application.routes.draw do
  get 'html_pages/home'
  get 'html_pages/help'
  root 'application#hello'
end
