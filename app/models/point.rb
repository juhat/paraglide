class Point
  include Mongoid::Document

  field :name, type: String
  field :height, type: Integer
  field :description, type: String

  field :address, type: String
  field :latitude, type: Float
  field :longitude, type: Float

  field :wind_north, type: Boolean
  field :wind_north_east, type: Boolean
  field :wind_east, type: Boolean
  field :wind_east_south, type: Boolean
  field :wind_south, type: Boolean
  field :wind_south_west, type: Boolean
  field :wind_west, type: Boolean
  field :wind_west_north, type: Boolean

  validates :name, presence: { allow_blank: false }, length: { minimum: 3 }
  validates :height, :latitude, :longitude, presence: { allow_blank: false }, length: { minimum: 2 }, numericality: true
end