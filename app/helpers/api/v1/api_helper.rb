module Api::V1::ApiHelper
  def random_error_message
    ["#{I18n.t(['take_number', 'dont_belive', 'api_lazy'].sample)}"]
  end

  def success_status
    'success'
  end
    
  def api_base
    ApiBase.new
  end
end
