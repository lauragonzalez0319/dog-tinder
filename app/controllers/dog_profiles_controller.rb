class DogProfilesController < ApplicationController

  def index 
    dog_profiles = DogProfile.all
    render json: dog_profiles, status: :ok
  end
end
