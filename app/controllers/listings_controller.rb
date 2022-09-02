class ListingsController < ApplicationController

  def new
    # Format API payload
    payload = params['payload']
    logger.info "="*40
    logger.info "Confirming logger.info works"*40
    # logger.ap "Confirming logger.ap works"*40
    puts "Confirming puts works"*40
    logger.info "="*40
    # Puts payload information
    logger.info "="*40
    logger.info payload
    logger.info "-"*40


    # Process payload into listing
    listing = Listing.process_payload(payload)
    # Validate listing is for NFL ALL DAY
    return not_nfl_all_day_transaction(listing) unless listing.contract_slug == "nfl_all_day"

    # Puts data about listing transaction
    logger.info "Transaction: #{listing.transaction_id}"
    logger.info "Events: #{listing.events_count}"
    logger.info "Event [0] NFT Serial: #{listing.nft_serial}"
    logger.info "Event [0] NFT Price: #{listing.price}"
    logger.info "-"*40

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
