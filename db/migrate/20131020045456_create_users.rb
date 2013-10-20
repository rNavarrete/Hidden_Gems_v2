class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.string :password_digest
      t.string :password_salt
      t.string :remember_token
      t.datetime :created_at
      t.datetime :updated_at
      t.string :password_reset_token
      t.datetime :password_reset_sent_at
      t.string :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.datetime :last_login_at
      t.datetime :last_logout_at
      t.datetime :last_activity_at
      t.integer :login_count
      t.string :last_login_ip
      t.string :provider
      t.string :uid

      t.timestamps
    end
  end
end
