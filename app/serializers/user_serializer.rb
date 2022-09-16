class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password
  has_many :dog_profiles
end
