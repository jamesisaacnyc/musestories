class UsersController < ApplicationController
before_action :authenticate_user!
before_action :find_user, only: [:show, :edit]
before_action :update_user, only: [:update]
  def show

  @user_stories = @user.stories
  end

  def edit
  	
  end


	def update
	if @user_id.update(user_params)
		redirect_to root_url, notice: "Updated"
	else
		render 'edit'
	end	
end

private

def user_params
	params.require(:user).permit(:username, :hometown, :age, :avatar)
end

def find_user
@user = Story.find(params[:id]).user
end

def update_user
@user_id = User.find(params[:id])
end

end