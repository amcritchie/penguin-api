# nethttp.rb
require 'uri'
require 'net/http'
require 'net/https'

class ExternalRequest < ApplicationRecord
  belongs_to :creator, optional: true

  def execute_discord_webhook
    request_started = Time.now
    # Iteratate execution count.
    self.execution_count += 1
    # Save first_executed_at if first execution
    self.first_executed_at = request_started if self.execution_count == 1
    # Save last_executed_at
    self.last_executed_at = request_started
    # Execute Post Request.
    request_response = post_request
    # Unless first execution, archive previous response
    archive_previous_response unless self.execution_count == 1
    self.response_code = request_response.code
    self.response_message = request_response.message
    self.response_header = request_response.header
    self.request_duration_ms = (Time.now - request_started)*1000
    # Response Body
    self.response_body_raw = request_response.body.inspect
    self.response_body = JSON.parse(request_response.body, symbolize:true) unless request_response.body.nil? # This goes last incase the symbolize_json fails
    # Evaluate response from Authorize.net
    if self.response_code == '204'
      self.successful = true
      self.response_status = 'action-successful'
    elsif self.response_code == '429'
      self.response_status = 'rate-limit-reached'
      # https://discord.com/developers/docs/topics/rate-limits
    else
      self.response_status = 'unknown-response'
    end
    # Save external request
    self.save
  end

  def post_request
    # Build URI.
    uri = URI(url)
    # Execute request.
    Net::HTTP.post_form(uri, self.params)
  end

    def archive_previous_response
    # Since the previous response is a string, create a hash.
    previous_response = {}
    previous_response[:run_at] = self.last_executed_at
    previous_response[:code] = self.response_code
    previous_response[:status] = self.response_status
    previous_response[:response] = self.response_body
    previous_response[:response_raw] = self.response_body_raw
    self.previous_responses.push previous_response
  end
end
