class UsersController < ApplicationController
  #get request that renders a form
  def signup
    #render a view and let a user register
    #my only job .... is to render a form! yay! i have a job!

  end

  def confirmation
    # puts '-----users#confirmation-------'
    # puts user_params
    # puts '------end users#confirmation------'
    #post request


    @user = User.new(user_params)
    if @user.save
      #thanks! you're in!
      session[user_id] = @user.id
    else
      @message - 'User account does not exist or passwords do not match'
    render 'users/signup'


    end
  end
private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)

end
