class AddLogoImageToHotel < ActiveRecord::Migration
  def change
    add_column :hotels, :logo_img, :string
  end
end
