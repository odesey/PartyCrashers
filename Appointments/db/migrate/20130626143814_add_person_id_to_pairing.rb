class AddPersonIdToPairing < ActiveRecord::Migration
  def change
    add_column :pairings, :person_id, :integer
  end
end
