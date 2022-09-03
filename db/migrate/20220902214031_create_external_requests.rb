class CreateExternalRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :external_requests do |t|
      t.string :key
      t.boolean :successful
      t.integer :execution_count, default: 0
      t.datetime :last_executed_at
      t.string :response_status
      t.belongs_to :creator, null: true, polymorphic: true
      t.string :http_method, default: :post
      t.string :url
      t.boolean :ssl, default: true
      t.json :headers, default: {}
      t.json :params, default: {}
      t.integer :request_duration_ms
      t.string :response_code
      t.json :response_body, default: {}
      t.json :response_body_raw, default: {}
      t.datetime :first_executed_at
      t.json :previous_responses, default: []

      t.timestamps
    end
    add_index :external_requests, :key
    add_index :external_requests, :successful
    add_index :external_requests, :execution_count
    add_index :external_requests, :last_executed_at
    add_index :external_requests, :response_status
    add_index :external_requests, :response_code
    add_index :external_requests, :first_executed_at
    add_index :external_requests, :created_at
    add_index :external_requests, :updated_at
  end
end
