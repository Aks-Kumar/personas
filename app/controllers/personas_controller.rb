class PersonasController < ApplicationController
  def index
    #render plain: "Hello #{Account.first.first_name} #{Account.first.last_name}"
    render "index"
  end
end
