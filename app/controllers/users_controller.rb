class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    if @user.prototypes.exists?
      @prototype = @user.prototypes.first
    else
      @prototype = nil
    end
  end
end
