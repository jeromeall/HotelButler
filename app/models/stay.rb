class Stay < ActiveRecord::Base
  belongs_to :room
  belongs_to :guest
  has_many :housekeepings

  def self.guest_stays(guest)
    return guest.stays
  end

end
