class Room < ActiveRecord::Base
  belongs_to :hotel
  has_many :stays
  has_many :guests, through: :stays
end
