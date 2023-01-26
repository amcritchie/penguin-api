class MomentsController < ApplicationController

  def index
    @moments = Moment.order(nft_low_serial: :asc)
    require 'launchy'
     Launchy.open("http://stackoverflow.com")
  end
end
