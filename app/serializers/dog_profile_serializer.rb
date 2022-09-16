class DogProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :bio, :age, :location, :breed, :size, :looking_for, :has_kids, :wants_kids
  belongs_to :user
end
