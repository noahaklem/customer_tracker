class AddProfileImgToCustomer < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :profile_img, :string
  end
end
