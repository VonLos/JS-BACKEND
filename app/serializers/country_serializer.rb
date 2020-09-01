class CountrySerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :cc, :name
  has_many :resources
end
