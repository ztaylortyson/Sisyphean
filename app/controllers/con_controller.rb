class ConController < ApplicationController
  def change_status
      @user = User.find(params[:user])

          if @user.status == "active"
                @user.status = "inactive"
          else @user.status == "inactive"
                @user.status = "active"
          end

          if @user.save
            flash[:notice] = "User status updated."
          end

      redirect_to admin_users_path

  end

  def change_role
  end

  def change_rank
  end

  def home
  end
end
