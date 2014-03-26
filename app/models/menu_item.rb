class MenuItem < ActiveRecord::Base
  belongs_to :hotel
  has_many :order_details
  has_many :roomservices, through: :order_details
end
