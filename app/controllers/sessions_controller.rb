class SessionsController < ApplicationController
  def new
  end

  
  def create
   user = User.find_by_name(params[:name])	
   if user && user.authenticate(params[:password]) 			
		session[:user_id] = user.id		
		redirect_to user
   else  	 		
		flash.now[:error] = "Invalid name/password combination."   
		render 'new'		           
    end
  end

  def destroy
		if signed_in?
			session[:user_id] = nil
		else
			flash[:notice] = "You need to sign in first"
		end
			redirect_to signin_path
	end

	def newa
	end

	def createa
		a = Admin.find_by_name(params[:name])
		if a 
			session[:a_id] = a.id
			redirect_to root_path
		else	
			flash[:error]= 'Invalid Username Or Password'
			render 'newa'
		end	
	end	
	
	def destroya
		if asigned_in?
			session[:a_id] = nil
		else
			flash[:notice] = "You must sign in first"
		end
			redirect_to root_path
		end	
end