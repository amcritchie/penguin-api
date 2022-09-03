class ExternalRequestsController < ApplicationController

  def index
    @external_requests = ExternalRequest.order(id: :desc)
  end
end
