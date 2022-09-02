# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_09_02_031154) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "listings", force: :cascade do |t|
    t.bigint "moment_id", null: false
    t.bigint "user_id", null: false
    t.bigint "moment_mint_id", null: false
    t.string "slug"
    t.integer "serial"
    t.integer "nft_serial"
    t.string "price"
    t.string "contract_slug"
    t.string "contract"
    t.string "transaction_id"
    t.string "processing_status"
    t.integer "events_count"
    t.json "primary_event"
    t.json "payload"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract"], name: "index_listings_on_contract"
    t.index ["created_at"], name: "index_listings_on_created_at"
    t.index ["moment_id"], name: "index_listings_on_moment_id"
    t.index ["moment_mint_id"], name: "index_listings_on_moment_mint_id"
    t.index ["nft_serial"], name: "index_listings_on_nft_serial"
    t.index ["price"], name: "index_listings_on_price"
    t.index ["serial"], name: "index_listings_on_serial"
    t.index ["slug"], name: "index_listings_on_slug"
    t.index ["transaction_id"], name: "index_listings_on_transaction_id"
    t.index ["updated_at"], name: "index_listings_on_updated_at"
    t.index ["user_id"], name: "index_listings_on_user_id"
  end

  create_table "moment_mints", force: :cascade do |t|
    t.bigint "moment_id", null: false
    t.bigint "user_id", null: false
    t.string "slug"
    t.integer "serial"
    t.integer "nft_serial"
    t.string "nflallday_mint_id"
    t.boolean "burned"
    t.datetime "minted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["burned"], name: "index_moment_mints_on_burned"
    t.index ["created_at"], name: "index_moment_mints_on_created_at"
    t.index ["minted_at"], name: "index_moment_mints_on_minted_at"
    t.index ["moment_id"], name: "index_moment_mints_on_moment_id"
    t.index ["nflallday_mint_id"], name: "index_moment_mints_on_nflallday_mint_id"
    t.index ["nft_serial"], name: "index_moment_mints_on_nft_serial"
    t.index ["serial"], name: "index_moment_mints_on_serial"
    t.index ["slug"], name: "index_moment_mints_on_slug"
    t.index ["updated_at"], name: "index_moment_mints_on_updated_at"
    t.index ["user_id"], name: "index_moment_mints_on_user_id"
  end

  create_table "moments", force: :cascade do |t|
    t.string "slug"
    t.string "player_name"
    t.string "team_name"
    t.string "position"
    t.integer "mint_count"
    t.string "tier"
    t.string "play_type"
    t.string "series"
    t.string "set"
    t.json "badges"
    t.string "game_summary"
    t.date "moment_on"
    t.string "week"
    t.string "contract"
    t.integer "nft_high_serial"
    t.integer "nft_low_serial"
    t.string "description"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["created_at"], name: "index_moments_on_created_at"
    t.index ["mint_count"], name: "index_moments_on_mint_count"
    t.index ["nft_high_serial"], name: "index_moments_on_nft_high_serial"
    t.index ["nft_low_serial"], name: "index_moments_on_nft_low_serial"
    t.index ["player_name"], name: "index_moments_on_player_name"
    t.index ["slug"], name: "index_moments_on_slug"
    t.index ["tier"], name: "index_moments_on_tier"
    t.index ["updated_at"], name: "index_moments_on_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "dapper_username"
    t.string "flow_account"
    t.string "email"
    t.string "password_digest"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin"], name: "index_users_on_admin"
    t.index ["created_at"], name: "index_users_on_created_at"
    t.index ["dapper_username"], name: "index_users_on_dapper_username"
    t.index ["email"], name: "index_users_on_email"
    t.index ["flow_account"], name: "index_users_on_flow_account"
    t.index ["updated_at"], name: "index_users_on_updated_at"
  end

  add_foreign_key "listings", "moment_mints"
  add_foreign_key "listings", "moments"
  add_foreign_key "listings", "users"
  add_foreign_key "moment_mints", "moments"
  add_foreign_key "moment_mints", "users"
end
