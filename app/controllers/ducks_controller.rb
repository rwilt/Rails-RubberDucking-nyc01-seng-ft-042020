class DucksController < ApplicationController

 
  def index
    @ducks = Duck.all
  end
  
  def show
    @duck = Duck.find(params[:id])
  end 

  def edit
    @duck = Duck.find(params[:id])
  end

  def update
    duck = Duck.find(params[:id])
    duck.update(duck_params)
  
    redirect_to duck_path(duck.id)
  end
def new 
  @duck = Duck.new
  render :new
end

def create
  @duck = Duck.create(duck_params)

  if @duck.valid?
    redirect_to duck_path(@duck.id)
  else 
    flash[:my_errors] = @duck.errors.full_messages
    redirect_to duck_new_path
  end
end


  private
  def duck_params
    params.require(:duck).permit(:name,:description, :student_id)
  end

end
