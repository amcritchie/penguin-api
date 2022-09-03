class MomentMint < ApplicationRecord
  belongs_to :moment, optional: true
  belongs_to :user, optional: true
  has_many :listings

  after_save :populate_slug, :populate_serial

  def populate_slug
    # Populate slug if moment was changed.
    return nil unless moment_id_changed?
    # Update moment's slug if there is an assoicated moment and it was changed.
    update_column(:slug, moment.slug) if moment && moment_id_changed?
  end

  def populate_serial
    return nil unless moment
    return nil unless nft_serial
    # Calculate serial number
    serial = self.nft_serial - moment.nft_low_serial + 1
    # Update serial
    update_column(:serial, serial)
  end

  def nflallday_mint_url
    "https://nflallday.com/moments/#{nflallday_mint_id}"
  end
end
