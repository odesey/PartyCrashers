class CreatePairings < ActiveRecord::Migration
  def change
    create_table :pairings do |t|
      t.integer :partner_id
      t.integer :team_id
      t.date :date

      t.timestamps
    end
  end
end
