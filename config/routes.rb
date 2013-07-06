# encoding: UTF-8
# ===========================================================================
# (c) 2013 Bureau Pels. All Rights Reserved
# ===========================================================================

Sharss::Application.routes.draw do

  devise_for :admins
  devise_for :users

  get 'change_locale', to: 'application#change_locale'

  scope '(:locale)' do
    get 'about', to: 'about#index'
    get 'sysinfo', to: 'sysinfo#index'
    get 'welcome', to: 'welcome#index'
  end

  root to: 'welcome#index'
end
