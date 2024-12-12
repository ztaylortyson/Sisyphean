class AdminController < ApplicationController
  def check_admin 
    puts "in check_admin method"
    redirect_to(root_path, alert: 'Not authorized.') unless current_user.admin? 
    puts 
    puts 
  end
  def home
  end

  def users
    @users = User.all
  end

  def edit
  end
  
  def toggle_status
      puts " = = = = " 
      puts "in toggle_status method"
      @user = User.find(params[:user])
      puts @user.inspect

      if @user.status == "active"
        puts "User has #{@user.status} status"
        @user.status = "inactive"
        puts "User status changed to #{@user.status}"
      elsif @user.status == "inactive"
        puts "user has #{@user.status} status"
        @user.status = "active"
        puts "user status changed to #{@user.status}"
      else
        puts "unknown"
      end

        if @user.save
          flash[:notice] = "User status updated."
          redirect_to admin_users_path
        end
  end
  def toggle_role
      # @user = User.find(params[:user])
      # if @user.role == "admin"
      #   @user.role = "atty"
      # elsif @user.role == "atty"
      #   @user.role = "dc"
      # elsif @user.role == "dc"
      #   @user.role = "admin"
      # else
      #   puts "Error . . . . . "
      #   puts " . . . . . unknown" 
      # end
  end

end











