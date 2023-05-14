class WelcomeController < ApplicationController
  def index
    cookies[:nome] = "Marcos Lisboa"
  end
end
