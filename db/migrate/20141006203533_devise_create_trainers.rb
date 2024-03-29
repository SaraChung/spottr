class DeviseCreateTrainers < ActiveRecord::Migration
  def change
    create_table(:trainers) do |t|
      ## Database authenticatable
      t.string :first_name,         null: false, default: ""
      t.string :last_name,          null: false, default: ""
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :phone_number,       null: false, default: ""
      t.boolean :gender,            null: false, default: true
      t.float :latitude
      t.float :longitude
      t.boolean :trainer,           null: false, default: true

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps
    end

    add_index :trainers, :email,                unique: true
    add_index :trainers, :reset_password_token, unique: true
    # add_index :trainers, :confirmation_token,   unique: true
    # add_index :trainers, :unlock_token,         unique: true
  end
end
