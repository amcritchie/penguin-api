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

    # Puts data about listing transaction
    puts "Transaction: #{listing.transaction_id}"
    puts "Events: #{listing.events_count}"
    puts "Event [0] NFT Serial: #{listing.nft_serial}"
    puts "Event [0] NFT Price: #{listing.price}"
    puts "-"*40

    # Do something if moment is interesting...

    render json: {request: :successful}, status: 200
  end

  def not_nfl_all_day_transaction(listing)
    # Puts status
    logger.info "Not NFL ALL DAY Moment - #{listing.contract}".red
    # Render 200
    render json: {request: :successful}, status: 200
  end
end
