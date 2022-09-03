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

  def serial_digit_emoji
    # Find digits in serial
    serial_digits = serial.digits.count
    # Return emoji based on serial's digits
    if serial_digits == 1     # 1 Digit: 1 - 9
      ":blue_circle:"
    elsif serial_digits == 2  # 2 Digits: 10 - 99
      ":green_circle:"
    elsif serial_digits == 3  # 3 Digits: 100 - 999
      ":yellow_circle:"
    elsif serial_digits == 4  # 4 Digits: 1000 - 9999
      ":orange_circle:"
    else
      ":red_circle:"
    end
  end

  def serial_message
    # Return serial message for discord.
    "#{serial_digit_emoji} ##{serial} / #{moment.mint_count}"
  end

  def discord_badges
    badges_string = ""
    badges_string += ":red_circle: " if moment.badges.include? 'rookie_year'
    badges_string += ":orange_circle: " if moment.badges.include? 'championship_year'
    badges_string += ":white_circle: " if additional_badges.include? 'jersey_number'# Example: https://nflallday.com/moments/d0ca5217-8080-4f62-bbf7-b612282061c5
    badges_string += ":blue_circle: " if moment.badges.include? 'minted_rookie_year'
    badges_string += ":purple_circle: " if additional_badges.include? 'serial_1' # Example: https://nflallday.com/moments/584cad98-b49c-49f9-9ed9-3d5ed61cbb89
    badges_string += ":green_circle: " if moment.badges.include? 'debut'
    # Examples:
    # (R)ookie_year - (C)hampionship_year - (J)ersey_number - (1)_serial - (M)inted_rookie_year - (D)ebut
    # R-C-M-D https://nflallday.com/moments/c5709dfc-8201-491e-8696-27ed2672ba58
    # C-J-D https://nflallday.com/moments/0c75ca72-581e-43f9-8083-f46f60a298fd
    # C-1-D https://nflallday.com/moments/5124e681-951d-4f51-bbdd-6392e798131f
    # J-1-D https://nflallday.com/moments/5fa0a5d7-50fc-4eaa-a111-973e0fd931da
    # R-J-M-D https://nflallday.com/moments/d3de9d22-e9ea-4c73-886f-b49218ee628a
    # 1-D https://nflallday.com/moments/d3de9d22-e9ea-4c73-886f-b49218ee628a
  end
end
