class Listing < ApplicationRecord
  belongs_to :moment
  belongs_to :user
  belongs_to :moment_mint

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
end
