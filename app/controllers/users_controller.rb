class UsersController < ApplicationController

  def show 
    user = User.find(params[:id])
    render json: user, status: :ok
  end 

  def create
    user = User.create(username: params[:username], password: params[:password])
    session[:user_id] = user.id
    dog = DogProfile.create(user_id: user.id, name: params[:name], image_url: params[:image_url], bio: params[:bio], sex: params[:sex], age: params[:age], location: params[:location], breed: params[:breed], size: params[:size], looking_for: params[:looking_for], has_kids: params[:has_kids], wants_kids: params[:wants_kids])
    render json: user, status: :created
  end

private 

  def user_params
    params.permit(:username, :password, :name, :image_url, :bio, :sex, :age, :location, :breed, :size, :looking_for, :has_kids, :wants_kids)
  end 

end