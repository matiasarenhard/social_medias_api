# frozen_string_literal: true

class Instagram
  include Api::V1::ApiHelper

  def initialize
    @url = ENV['URL_API_INSTAGRAM']
    @timeout = ENV['URL_API_INSTAGRAM']
  end

  def take_photos
    request = api_base.request_get(@url, @timeout)
    if request[:status] == success_status
      json_response = JSON(request[:response])
      if json_response[0].key?('username')
        json_response
      else
        random_error_message
      end
    else
      request[:response]
    end
  end
end
