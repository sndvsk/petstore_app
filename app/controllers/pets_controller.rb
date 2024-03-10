class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]

  # GET /pets
  def index
    @pets = Pet.all
  end

  # GET /pets/1
  def show
  end

  # GET /pets/new
  def new
    @pet = Pet.new
  end

  # GET /pets/1/edit
  def edit
  end

  # POST /pets
  def create
    if current_user
      @pet = current_user.pets.new(pet_params)
      if @pet.save
        redirect_to @pet, status: :see_other, notice: 'Pet was successfully created.'
      else
        render :new, status: :unprocessable_entity
      end
    else
      redirect_to new_user_session_path, alert: 'You must be signed in to create a pet.'
    end
  end

  # PATCH/PUT /pets/1
  def update
    if @pet.update(pet_params)
      redirect_to @pet, notice: 'Pet was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /pets/1
  def destroy
    @pet.destroy
    redirect_to pets_url, notice: 'Pet was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_pet
    @pet = Pet.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def pet_params
    params.require(:pet).permit(:name, :pet_type, :age)
  end
end
