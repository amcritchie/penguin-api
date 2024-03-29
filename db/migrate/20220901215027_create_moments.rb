class CreateMoments < ActiveRecord::Migration[7.0]
  def change
    create_table :moments do |t|
      t.integer :edition_id
      t.string :slug
      t.string :player_name
      t.integer :player_number
      t.string :team_name
      t.string :position
      t.integer :mint_count
      t.string :tier
      t.string :play_type
      t.string :series
      t.string :set
      t.json :badges, default: []
      t.string :discord_emoji_description
      t.string :game_summary
      t.date :moment_on
      t.string :week
      t.string :contract
      t.integer :nft_high_serial
      t.integer :nft_low_serial
      t.string :nfl_all_day_moment_id
      t.string :nfl_all_day_player_id
      t.string :description
      t.string :image_url
      t.string :discord_channel_webhook

      t.timestamps
    end
    add_index :moments, :slug
    add_index :moments, :player_name
    add_index :moments, :tier
    add_index :moments, :mint_count
    add_index :moments, :nft_high_serial
    add_index :moments, :nft_low_serial
    add_index :moments, :created_at
    add_index :moments, :updated_at
  end
end
