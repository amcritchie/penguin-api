class User < ApplicationRecord
  validates :dapper_username, uniqueness: { case_sensitive: false }

  # Don't validate email and password to create shell users with just flow credentials.
  # validates :email, uniqueness: { case_sensitive: false }
  # has_secure_password

  has_many :moment_mints
  has_many :moments, through: :moment_mints
  has_many :listings

  def nflallday_collention_url
    "https://nflallday.com/user/#{dapper_username}"
  end

  def flowscan_transactions_url
    "https://flowscan.org/account/#{flow_account}"
  end
end
