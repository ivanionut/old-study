Rails.application.routes.draw do

  get 'capybara-welcome' => 'capybara#welcome', as: :welcome

  get 'capybara-header' => 'capybara#header', as: :capybara_header

  get 'capybara-get-cookie' => 'capybara#get_cookie', as: :get_cookie

  get 'capybara-set-cookie' => 'capybara#set_cookie', as: :set_cookie

  get 'capybara-javascript' => 'capybara#capybara_javascript', as: :capybara_javascript

end
