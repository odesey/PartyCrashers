class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :party_id
      t.text :name

      t.timestamps
    end
  end
end
