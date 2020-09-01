# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'net/http'
def api_pull
    url = "https://api.covid19api.com/summary"
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    data = JSON.parse(response.body)
    @countries = data['Countries']
  end
  api_pull
  data = @countries.each { |n| Country.new(cc: n["CountryCode"],name: n["Country"]).save}
 