class Stay < ActiveRecord::Base
  belongs_to :room
  belongs_to :guest
  has_many :housekeepings
  has_many :concierges
  has_many :roomservices

  

  validate :checkout_cannot_be_after_checkin

  def checkout_cannot_be_after_checkin
    if self.checkout_date < self.checkin_date
      errors.add(:checkout_date, "checkout date cannot be after checkin date.")
    end
  end
  def self.guest_stays(guest)
    return guest.stays
  end

end
