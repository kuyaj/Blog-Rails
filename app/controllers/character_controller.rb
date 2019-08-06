class CharacterController < ApplicationController
  def index
    @character = Character.all
  end

  def show
    @character = Character.find(params[:id])
    render :show
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to root_path, notice: "Your post have been deleted!"
  end
end   
