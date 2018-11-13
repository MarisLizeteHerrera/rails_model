class PeopleController < ApplicationController
  # CRUD - Create Read Update Destroy

  # index and show are "READ"
  def index
    @people = Person.all
  end

  def show
    @people = Person.find(params[:id])
  end

  # # new is for create
  def new
    @people = Person.new
  end

  def create
    @person = Person.new(people_params)
 
    if @person.save
      redirect_to person_path
    else
      render :new
    end
  end

  # # destroy is for destroying
  # def destroy
  #   @people = Person.find(params[:id]).destroy
  # end

  # # update is for updating
  # def update
  #   @people = Person.find(params[:id]).
  # end

end