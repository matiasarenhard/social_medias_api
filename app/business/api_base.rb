# frozen_string_literal: true

class ApiBase
  include Api::V1::ApiHelper

  def initialize; end

  def request_get(url, timeout)
    request = HTTParty.get(url, timeout: timeout)
    if request.code == 200
      { status: 'success', response: request.body }
    else
      puts "OW MY GOD !! LOOK THIS ERROR: #{request}"
      { status: 'error', response: random_error_message }
    end
  end
end
