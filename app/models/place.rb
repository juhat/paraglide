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
end
