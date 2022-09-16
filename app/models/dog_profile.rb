class DogProfile < ApplicationRecord
  belongs_to :user
  has_many :decisions_made, foreign_key: "decision_maker_id", class_name: "Decision"
  has_many :decisions_received, foreign_key: "decision_receiver_id", class_name: "Decision"
  
  # dog profiles who have approved "self"
  # filters out rejections so in swipe mode user only sees eligible partners because of a dog already rejected them, 
  # seeing their profile to make a decision has no value because approval must be mutual to have a match  
  def approvals_received_ids  
    return Decision.where(decision_receiver_id: self.id, approved: true, active: true).pluck(:decision_maker_id)  
  end

  def rejections_received_ids
    return Decision.where(decision_receiver_id: self.id, approved: false, active: false).pluck(:decision_maker_id)
  end

  def rejections_made_ids
    return Decision.where(decision_maker_id: self.id, approved: false, active: false).pluck(:decision_receiver_id)
  end

  def matches_ids
    approvals_ids = Decision.where(decision_receiver_id: self.id, approved: true, active: false).pluck(:decision_maker_id)
    return matches_ids = Decision.where(decision_maker_id: self.id, decision_receiver_id: approvals_ids).pluck(:decision_receiver_id)
  end

end
