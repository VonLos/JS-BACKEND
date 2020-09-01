class ResourceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :link, :country_id
  belongs_to :country
end
