class AddMainImageToParty < ActiveRecord::Migration
  def change
    add_column :parties, :main_image, :string
  end
end
