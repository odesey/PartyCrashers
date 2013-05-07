class CreateAttendedParties < ActiveRecord::Migration
  def change
    create_table :attended_parties do |t|
      t.integer :user_id
      t.integer :party_id

      t.timestamps
    end
  end
end
