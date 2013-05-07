class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :title
      t.string :address
      t.integer :rating
      t.integer :zipcode
      t.string :state
      t.date :date
      t.time :time
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
