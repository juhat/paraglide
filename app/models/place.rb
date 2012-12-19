class Place
  include Mongoid::Document

  field :name, type: String
  field :description, type: String

  embeds_many :points
  accepts_nested_attributes_for :points, :reject_if => proc { |attributes|
    attributes['name'].blank? ||
    attributes['height'].blank? ||
    attributes['latitude'].blank? ||
    attributes['longitude'].blank?
  }

  validates :name, presence: { allow_blank: false }, length: { minimum: 3 }
  validates :description, presence: { allow_blank: false }

  [:wind_north, :wind_north_east, :wind_east, :wind_east_south,
   :wind_south, :wind_south_west, :wind_west, :wind_west_north].each do |direction|
    define_method direction do
      points.map{|point| point.send(direction) }.any?
    end
  end

  def height
    ( points.reduce(0){|sum, point| sum + point.height }.to_f / points.size ).to_i
  end
end
