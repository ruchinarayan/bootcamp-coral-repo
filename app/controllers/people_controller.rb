#cpchmpll
class PeopleController < ApplicationController
  def index
    #grab all People.
    @people = Person.all
  end
  def new
    @person = Person.new
  end

  def create
    @person = Person.new(params.require(:person).permit(:first_name, :last_name, :dob))
    if @person.save
      redirect_to person_url(@person)
    else
      redirect_to people_url
    end
  end
  def show
    @person = Person.find(params[:id])
  end
  def edit
  @person = Person.find(params[:id])
  end
  def update
  @person = Person.find(params[:id])
  if @person.update(params.require(:person).permit(:first_name, :last_name, :dob))
    redirect_to person_url(@person)
  else
    redirect_to people_url
  end
  end
  def destroy
    @person = Person.find(params[:id]) 
    @person.destroy
    redirect_to people_url
  end


end
