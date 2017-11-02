class DogsController < ApplicationController
  
  before_action :authorize


  def index
    @dogs = Dog.all
  end
  
  
  def new
    @dog = Dog.new
  end

  
  def create
    @dog = Dog.new(user_params)
    @dog.user = current_user
    if @dog.save
      flash[:notice] = "You have successfully signed up your dog!"
      redirect_to dogs_path
    else
      render :new
    end
  end

  def destroy
    @dog = Dog.find(params[:id])
    if current_user == Dog.find(params[:id]).user
    @dog.destroy
    redirect_to dogs_path
    end
  end

  def show
    @dog = Dog.find(params[:id])
  end


  def adopt
    Dog.find(params[:id]).update_attributes(adoptor: current_user)
    redirect_to dog_path(params[:id])
  end



    private
  
     
      def user_params
        params.require(:dog).permit(:name, :pound_location, :age, :description, :image, :phone_number)
      end
  end

