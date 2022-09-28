class CheesesController < ApplicationController

  def index  #Method/action is static and renders all the cheeses.
    cheeses = Cheese.all  #notice that here is the working of the model in the MVC
    render json: cheeses  #Here is the working of the controller in rendering a view in the MVC
  end

  def show #This method is dynamic and renders just a singles cheese
    id = params[:id].to_i #The params is a hash that contains the dynamic bit of our submitted URL.The conversion is not mandatory
    render json: Cheese.find(id) #The find method is an activRecord method that works by finding an item in a db table with the given value of the id 
  end
end
