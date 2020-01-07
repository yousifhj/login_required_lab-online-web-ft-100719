class SessionsController < ApplicationController 

  def new 
  end 

  def create 
    session[:name] = params[:name]
    if session[:name].nil? || session[:name] == ""
        redirect_to '/login'
    else 
        redirect_to '/sessions/show'
    end 
  end 


  def destroy 
    session.delete :name
  end 

end 