class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.belongs_to :moment, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :moment_mint, null: false, foreign_key: true
      t.string :slug
      t.integer :serial
      t.integer :nft_serial
      t.string :price
      t.string :contract
      t.string :transaction_id
      t.json :payload

      t.timestamps
    end
    add_index :listings, :slug
    add_index :listings, :serial
    add_index :listings, :nft_serial
    add_index :listings, :price
    add_index :listings, :contract
    add_index :listings, :transaction_id
    add_index :listings, :created_at
    add_index :listings, :updated_at
  end
end
