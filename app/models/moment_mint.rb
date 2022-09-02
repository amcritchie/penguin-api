class MomentMint < ApplicationRecord
  belongs_to :moment
  belongs_to :user

  def nflallday_mint_url
    "https://nflallday.com/moments/#{nflallday_mint_id}"
  end
end
