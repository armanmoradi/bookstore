class AuthersController < ApplicationController
  def new
    @page_title = 'Add New Auther'
    @auther = Auther.new
  end

  def create
    @auther = Auther.new(auther_params)
   if @auther.save
   flash[:notice] = "Auther Created"
   redirect_to authers_path
 else 
  render 'new'
  end
end

  def update
    @auther = Auther.find(params[:id])
    @auther.update(auther_params)
    flash[:notice] = "auther Updated"
   redirect_to authers_path
  end

  def edit
    @auther = Auther.find(params[:id])
  end

  def destroy
    @auther = Auther.find(params[:id])
    @auther.destroy
    flash[:notice] = 'Auther Removed'
    redirect_to authers_path
  end

  def index
   @authers = Auther.all 
  end

  
  private
     def auther_params
   params.require(:auther).permit(:first_name, :last_name)
  end
end
