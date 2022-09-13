class CreateDogProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :dog_profiles do |t|
      t.string :username
      t.string :password
      t.string :name
      t.string :image_url
      t.string :bio
      t.integer :age
      t.string :location
      t.string :breed
      t.string :size
      t.string :looking_for
      t.boolean :has_kids
      t.boolean :wants_kids

      t.timestamps
    end
  end
end
