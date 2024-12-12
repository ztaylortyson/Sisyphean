class AdminController < ApplicationController
  def home
  end

  def users
    @users = User.all
  end

  def toggle_status
    puts "in toggle_method"
   @user = User.find(params[:user])
   puts "found user: #{@user.inspect}"
   puts "user status: #{@user.status}"
   if @user.status == "active"
      @user.status = "inactive"
   else
      if @user.status == "inactive"
        @user.status = "active"
      end
   end

   if @user.save
    flash[:notice] = "User status updated."
   end
   redirect_to admin_users_path
  end

end
