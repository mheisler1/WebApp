class UserController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update]

    def edit
    end

    def update
        respond_to do |format|
        if @user.update(userParams)
            format.html { redirect_to @user, notice: 'User was successfully updated.' }
        else
            format.html { render :edit }
        end
      end
    end

    private
    def userParams
        params.require(:user).permit(:company, :email, :phone, :name, :approved)
    end

    def set_user
        @user = User.find(params[:id])
    end

end
