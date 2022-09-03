class Moment < ApplicationRecord
  has_many :moment_mints
  has_many :listings

  # after_create :initialize_badges
  after_save :populate_high_serial
  #
  # # Badges need to be initializes to empty array because a JSON type cannot have a [] default.
  # def initialize_badges
  #   # Update badges to empty array.
  #   update_column(:badges, []) if badges.nil?
  # end

  def populate_high_serial
    return nil unless nft_high_serial.nil?
    return nil if nft_low_serial.nil? || mint_count.nil?
    # Calculate NFT high serial number
    nft_high_serial = self.nft_low_serial + self.mint_count - 1 # 1 is removed to account for no 0 mint
    # Update moment's nft_high_serial
    update_column(:nft_high_serial, nft_high_serial)
  end

  def self.calculate_low_serial(serial=29,nft_serial=3172250)
    nft_serial - serial + 1 # Extra 1 needed to account for no 0 mint
  end

  def self.calculate_high_serial(mint_count=29,nft_low_serial=3172222)
    nft_low_serial + mint_count - 1 # 1 is removed to account for no 0 mint
  end

  def self.find_by_nft_serial(nft_serial)
    # Find moment where nft_serial is between the moment nft_low_serial and nft_high_serial.
    find_by("#{nft_serial} >= nft_low_serial AND #{nft_serial} <= nft_high_serial")
  end

  def discord_description
    "#{discord_emoji_description} #{player_name}"
  end

  def discord_links
    "[Moment](#{nflallday_moment_url}) | [Purchase](#{nflallday_purchase_url}) | [Search](#{nflallday_search_url})"
  end

  def nflallday_search_url
    "https://nflallday.com/marketplace/moments?byPlayerIDs=#{nfl_all_day_player_id}&sortBy=LISTED_DATE_DESC"
  end

  def nflallday_moment_url
    "https://nflallday.com/listing/moment/#{nfl_all_day_moment_id}"
  end

  def nflallday_purchase_url
    "https://nflallday.com/listing/moment/#{nfl_all_day_moment_id}/select"
  end
end
