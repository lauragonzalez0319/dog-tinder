class DecisionsController < ApplicationController

  def show
    decisions = Decision.where(decision_maker_id: params[:id])
    render json: decisions
  end

  #has id in route of decision maker (logged in dog)
  def create
    reply = Decision.where(decision_maker_id: params[:decision_receiver_id], decision_receiver_id: params[:decision_maker_id])
    if reply.exists?
      reply.update(active: false)
      decision = Decision.create(decision_maker_id: params[:decision_maker_id], decision_receiver_id: params[:decision_receiver_id], approved: params[:approved], active: false)
    else
      decision = Decision.create(decision_maker_id: params[:decision_maker_id], decision_receiver_id: params[:decision_receiver_id], approved: params[:approved], active: true)
    end
    render json: decision, status: :created
  end

  # def find_delete_decision(makerId, receiverId)
  #   decision = Decision.where(decision_maker_id: makerId, decision_receiver_id: receiverId).pluck(:id)
  # end

  # def decision_delete
  #   decision_to_delete = find_delete_decision(makerId = params[:decision_maker_id], receieverId = params[:decision_receiever_id])
  #   decision_to_delete.destroy
  #   head :no_content
  # end

  private 

  def decision_params
    params.permit(:decision_maker_id, :decision_receiver_id, :approved, :active)
  end
end
