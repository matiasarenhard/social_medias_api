# frozen_string_literal: true

class Facebook
  include Api::V1::ApiHelper

  def initialize
    @url = ENV['URL_API_FACEBOOK']
    @timeout = ENV['URL_API_FACEBOOK_TIMEOUT']
  end

  def take_statuses
    request = api_base.request_get(@url, @timeout)
    if request[:status] == success_status
      json_response = JSON(request[:response])
      if json_response[0].key?('name')
        json_response
      else
        random_error_message
      end
    else
      request[:response]
    end
  end
end
