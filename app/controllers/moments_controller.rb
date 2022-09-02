class MomentsController < ApplicationController

  def index
    @moments = Moment.order(nft_low_serial: :asc)
  end
end
