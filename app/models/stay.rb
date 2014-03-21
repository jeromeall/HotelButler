class Stay < ActiveRecord::Base
  belongs_to :room
  belongs_to :guest
end
