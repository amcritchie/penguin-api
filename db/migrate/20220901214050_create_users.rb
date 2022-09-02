class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :dapper_username
      t.string :flow_account
      t.string :email
      t.string :password_digest
      t.boolean :admin

      t.timestamps
    end
    add_index :users, :dapper_username
    add_index :users, :flow_account
    add_index :users, :email
    add_index :users, :admin
    add_index :users, :created_at
    add_index :users, :updated_at
  end
end
