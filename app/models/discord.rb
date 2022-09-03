class Discord < ApplicationRecord

  def self.send_new_listing_to_discord(message, channel_webhook=nil)
    # Define webhook URL.
    webhook_url = "https://discord.com/api/webhooks/#{ENV["WEBHOOK_KEY"]}/#{ENV["WEBHOOK_TOKEN"]}"
    # Overwrite webhook_url if channel_webhook was passed.
    webhook_url = channel_webhook unless channel_webhook.nil?
    # Create external request.
    external_request = ExternalRequest.create(
      key: :discord_new_listing,
      http_method: :post,
      ssl: true,
      url: webhook_url,
      params: {
        content: message
      }
    )
    # Execute external request
    external_request.execute_discord_webhook
  end
end
