class Listing < ApplicationRecord
  belongs_to :moment, optional: true
  belongs_to :user, optional: true
  belongs_to :moment_mint, optional: true

  after_create :initialize_payload
  after_save :populate_slug, :populate_serial

  # Payload need to be initializes to empty object because a JSON type cannot have a {} default.
  def initialize_payload
    # Update payload to empty object.
    update_column(:payload, {}) if payload.nil?
  end

  def populate_slug
    # Populate slug if moment or moment_mint was changed.
    return nil unless moment_id_changed? || moment_mint_id_changed?
    # Update moment's slug if there is an assoicated moment and it was changed.
    update_column(:slug, moment.slug) if moment && moment_id_changed?
    # Update moment's slug if there is an assoicated moment_mint and it was changed.
    update_column(:slug, moment_mint.slug) if moment_mint && moment_mint_id_changed?
  end

  def populate_serial
    # Validate listing doesn't already have a serial
    return nil unless serial.nil?
    # Validate listing is assoicate to a moment and that moment has a mint_count and nft_low_serial
    return nil unless moment && moment.mint_count && moment.nft_low_serial
    # Calculate listing's serial based on nft_low_serial
    update_column(:serial, nft_serial - moment.nft_low_serial + 1) # Extra 1 needed to account for no 0 mint
  end

  def self.process_payload(payload)
    listing = Listing.create(processing_status: :new)
    # Populate listing details
    listing.payload = payload
    listing.transaction_id = payload['data']['transactionId']
    listing.events_count = payload['data']['events'].length
    listing.primary_event = payload['data']['events'][0]
    # Save details
    listing.contract = listing.primary_event['data']['nftType']['typeID']
    puts '-1'
    puts listing.primary_event
    puts '-2'
    puts listing.primary_event['data']
    puts '-3'
    puts listing.primary_event['data']['nftType']
    puts '-4'
    puts listing.primary_event['data']['typeID']
    puts '-5'

    listing.nft_serial = listing.primary_event['data']['nftID']
    listing.transaction_id = listing.primary_event['data']['listingResourceID']
    listing.price = listing.primary_event['data']['price'].to_f * 100 # Price in cents
    # Identify if contract is NFL ALL DAY contract
    listing.contract_slug = :nfl_all_day if listing.contract == "A.e4cf4bdc1751c65d.AllDay.NFT"
    listing.processing_status = :payload_saved
    # Identify moment based on nft_serial
    if moment = Moment.find_by_nft_serial(listing.nft_serial)
      listing.moment = moment
      listing.processing_status = :moment_identified
    end
    listing.save # Ensure listing is saved
    puts listing.errors.inspect
    # return new listing
    listing
  # ensure
  #   listing.save # Ensure listing is saved
  end

  def flowscan_transactions_url
    "https://flowscan.org/transaction/#{transaction_id}"
  end
end
