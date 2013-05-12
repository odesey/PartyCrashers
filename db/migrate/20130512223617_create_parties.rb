class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :title
      t.string :address
      t.integer :zipcode
      t.string :state
      t.string :city
      t.integer :rating
      t.date :date
      t.time :time
      t.float :longitude
      t.float :latitude
      t.text :description

      t.timestamps
    end
  end
end
