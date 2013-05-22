class SessionsController < ApplicationController
  def create
    puts auth_hash.to_json
    @user = User.find_or_create_from_auth_hash(auth_hash)
    @current_user = @user
    redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
