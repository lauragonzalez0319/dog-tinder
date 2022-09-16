class DogProfilesController < ApplicationController
  def index 
    dog_profiles = DogProfile.all
    render json: dog_profiles, status: :ok
  end

  def show 
    dog_profile = DogProfile.find(params[:id])
    render json: dog_profile, status: :ok
  end

  def update
    dog_profile = DogProfile.find(params[:id])
    dog_profile.update(dog_profile_params)
    render json: dog_profile, status: :accepted
  end

  def create 
    dog_profile = DogProfile.create(dog_profile_params)
    render json: dog_profile, status: :created
  end

  #Helper Methods:

  #This method will have a route with dog profile id
  #It finds the profiles of dogs that arent who have rejected them and the dogs that arent the ones 
  #they've already rejected. It also finds not matches profiles and removes their own profiles.
  #They are all merged together to produce the eligible profiles that will come up in swipe mode.
  def eligible_profiles
    dog_profile = DogProfile.find(params[:id])
    not_rejections_made = DogProfile.where.not(id: dog_profile.rejections_made_ids)
    not_rejections_received = DogProfile.where.not(id: dog_profile.rejections_received_ids)
    not_made_not_received_profiles = not_rejections_made.merge(not_rejections_received)
    not_made_not_received_not_matches_profiles = not_made_not_received_profiles.where.not(id: dog_profile.matches_ids)
    eligible_profiles = not_made_not_received_not_matches_profiles.where.not(id: dog_profile.id)
    render json: eligible_profiles
  end

  #This method will have a route with dog profile id
  #It uses the instance method matches_ids to get the ids of dogs that matched and queries them to render the json
  def matches_profiles
    dog_profile = DogProfile.find(params[:id])
    matches_profiles = DogProfile.where(id: dog_profile.matches_ids)
    render json: matches_profiles
  end

  private

  def dog_profile_params
    params.permit(:name, :image_url, :bio, :sex, :age, :location, :breed, :size, :looking_for, :has_kids, :wants_kids)
  end

end
