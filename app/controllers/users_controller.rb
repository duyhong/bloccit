class UsersController < ApplicationController
#  load_and_authorize_resource param_method: :user_params

  def new
    @user = User.new
  end

  def confirm
    #form = Form.new(params[:form].permit!)
    # @user = User.new(params[:user].permit(params.keys).to_h)
    @user = User.new(params[:user].permit!)
    # @user = User.new(params[:user])
    # @user = User.new(params.require(:user).permit(:name, :email, :password, :password_confirmation))
    # @user = User.new(params.require(:user).permit(:user, data: {}))
    # unlocked_params = ActiveSupport::HashWithIndifferentAccess.new(params)
    # @user = User.create!(unlocked_params)
    # @user = User.create!(user_params)
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
  end

  def create
    #@comments = @post.comments.create(params[:comments].permit(:commenter, :body))
    # @user = User.new(params[:user])
    @user = User.new(params[:user].permit!)
    # unlocked_params = ActiveSupport::HashWithIndifferentAccess.new(params)
    # @user = User.create!(unlocked_params)
    # @user = User.new(params.require(:user).permit(:name, :email, :password, :password_confirmation))
    # @user = User.new(params.require(:user).permit!(:user, data: {}))
    # @user = User.create!(user_params)
    #@user = User.new(params[:user].permit(params.keys).to_h)
    # if params[:user]
      @user.name = params[:user][:name]
      @user.email = params[:user][:email]
      @user.password = params[:user][:password]
      @user.password_confirmation = params[:user][:password_confirmation]
    # end
# #10
    if @user.save
      flash[:notice] = "Welcome to Bloccit #{@user.name}!"
      redirect_to root_path
    else
      flash.now[:alert] = "There was an error creating your account. Please try again."
      render :new
    end
  end

  # def user_params
  #   params.require(:user).permit(:name, :email, :password, :password_confirmation)
  #   # params.require(:user).permit(:name).tap do |while_listed|
  #   #   while_listed[:name] = params[:user][:name]
  #   # end
  #   # params.require(:user).permit(:email).tap do |while_listed|
  #   #   while_listed[:email] = params[:user][:email]
  #   # end
  # end
end
