class CreateDecisions < ActiveRecord::Migration[6.1]
  def change
    create_table :decisions do |t|
      t.integer :decision_maker_id
      t.integer :decision_receiver_id
      t.boolean :approved
      t.boolean :active

      t.timestamps
    end
  end
end
