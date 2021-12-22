class PersonasController < ApplicationController
  #skip_before_action :ensure_logged_in

  def index
    render "index"
  end

  def home
    render "homepage"
  end
end
