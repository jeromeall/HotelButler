class Hotel < ActiveRecord::Base
has_many :rooms, dependent: :destroy
has_many :menu_items

end
