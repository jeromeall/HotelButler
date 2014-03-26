class OrderDetail < ActiveRecord::Base
  belongs_to :roomservice
  belongs_to :menu_item
end
