class Discord < ApplicationRecord

  def self.send_new_listing_to_discord(message)
    # Create external request.
    external_request = ExternalRequest.create(
      key: :discord_new_listing,
      http_method: :post,
      ssl: true,
      url: "https://discord.com/api/webhooks/#{ENV["WEBHOOK_KEY"]}/#{ENV["WEBHOOK_TOKEN"]}",
      params: {
        content: message
      }
    )
    # Execute external request
    external_request.execute_discord_webhook
  end
end
