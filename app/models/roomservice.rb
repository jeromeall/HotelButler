class Roomservice < ActiveRecord::Base
  belongs_to :stay
  has_many :order_details, dependent: :destroy
  has_many :menu_items, through: :order_details
end
