class CreateMomentMints < ActiveRecord::Migration[7.0]
  def change
    create_table :moment_mints do |t|
      t.belongs_to :moment, null: true, foreign_key: true
      t.belongs_to :user, null: true, foreign_key: true
      t.string :slug
      t.integer :serial
      t.integer :nft_serial
      t.string :nflallday_mint_id
      t.boolean :burned
      t.datetime :minted_at

      t.timestamps
    end
    add_index :moment_mints, :slug
    add_index :moment_mints, :serial
    add_index :moment_mints, :nft_serial
    add_index :moment_mints, :nflallday_mint_id
    add_index :moment_mints, :burned
    add_index :moment_mints, :minted_at
    add_index :moment_mints, :created_at
    add_index :moment_mints, :updated_at
  end
end
