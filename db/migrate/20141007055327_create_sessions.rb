class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.integer :trainer_id
      t.integer :user_id
      t.integer :exercise_id
      t.datetime :from_when
      t.datetime :to_when
      t.float :latitude
      t.float :longitude
      t.boolean :private
      t.boolean :status
      t.timestamps
    end
  end
end
