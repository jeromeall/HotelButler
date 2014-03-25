class Stay < ActiveRecord::Base
  belongs_to :room
  belongs_to :guest
  has_many :housekeepings
  has_many :concierges
  has_many :roomservices

  def self.guest_stays(guest)
    return guest.stays
  end

end
