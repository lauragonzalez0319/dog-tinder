class Decision < ApplicationRecord
  belongs_to :decision_maker, class_name: "DogProfile"
  belongs_to :decision_receiver, class_name: "DogProfile"

end
