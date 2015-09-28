class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end

  def new
    @user = User.new
    render :new
  end

  def create
    user_params = params.require(:user).permit(:first_name, :last_name, :email, :password)
    @user = User.create(user_params)

    login(@user) # <-- login the user
    redirect_to "/users/#{@user.id}" # <-- go to show
  end

   def show
      id = params[:id]
      @user = User.find(id)
      render :show
    end


  def edit
      id = params[:id]
      @user = User.find(id)
      render :edit
    end


  def update
    user_id = params[:id]
    user = User.find(Creature_id)

    # get updated data
    updated_attributes = params..require(:user).permit(:first_name, :last_name, :email, :password)
    # update the creature
    user.update_attributes(updated_attributes)

    #redirect to show
    redirect_to "/users/#{user_id}"
end

def destroy
    id = params[:id]
    user = User.find(id)
    user.destroy
    redirect_to "/users"
end

end
