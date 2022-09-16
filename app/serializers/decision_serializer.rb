class DecisionSerializer < ActiveModel::Serializer
  attributes :id, :decision_maker_id, :decision_receiver_id, :approved, :active
end
