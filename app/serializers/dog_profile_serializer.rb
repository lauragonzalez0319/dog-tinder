class DogProfileSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :name, :image_url, :bio, :age, :location, :breed, :size, :looking_for, :has_kids, :wants_kids
end
