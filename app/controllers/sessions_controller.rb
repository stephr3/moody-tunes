class SessionsController < ApplicationController

  def new

  end
  def create
    render text: auth_hash.to_yaml
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
