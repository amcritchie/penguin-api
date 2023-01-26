class ListingsController < ApplicationController

  def new
    # Format API payload
    payload = params['payload']
    puts "="*40
    puts payload
    puts "-"*40

    # Process payload into listing
    listing = Listing.process_payload(payload)
    # Validate listing is for NFL ALL DAY
    return not_nfl_all_day_transaction(listing) unless listing.contract_slug == "nfl_all_day"

    if listing.price == 100 || listing.price == 33300
      puts "="*60
      puts "$1 Listing"
      puts "="*60
    end

    # Puts data about listing transaction
    puts "Transaction: #{listing.transaction_id}"
    puts "Events: #{listing.events_count}"
    puts "Event [0] NFT Serial: #{listing.nft_serial}"
    puts "Event [0] NFT Price: #{listing.price}"
    # Puts moment name if moment is known.
    if listing.moment
      puts "Moment: #{listing.moment.player_name}".blue
    else
      puts "Moment: Known moment".red
    end

    if listing.moment
      # Create message
      message = listing.discord_message
      # Send listing to discord server.
      external_request = listing.send_new_listing_to_discord(message)
      # Send to custom server if moment has a specific discord channel.
      external_request = listing.send_new_listing_to_discord(message, listing.moment.discord_channel_webhook) if listing.moment.discord_channel_webhook
    end

    render json: {request: :successful}, status: 200
  end

  def not_nfl_all_day_transaction(listing)
    # Puts status
    logger.info "Not NFL ALL DAY Moment - #{listing.contract}".red
    # Render 200
    render json: {request: :successful}, status: 200
  end
end
