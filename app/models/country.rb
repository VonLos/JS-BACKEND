class Country < ApplicationRecord
  has_many :resources
  
  
  def api_pull
    url = "https://api.covid19api.com/summary"
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    response.body
    binding.pry
  end


end
