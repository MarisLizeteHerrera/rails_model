class PeopleController < ApplicationController
  # CRUD - Create Read Update Destroy

  # index and show are "READ"
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  # # new is for create
  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to people_path
    else
      render :new
    end
  end

  def destroy
    @person = Person.find(params[:id]).destroy
  end

  # # update is for updating
  # def update
  #   @person = Person.find(params[:id]).
  # end
 private

  def person_params
    params.require(:person).permit(:name, :age, :hair_color, :eye_color)
  end

end