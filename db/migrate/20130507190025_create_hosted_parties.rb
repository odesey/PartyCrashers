class CreateHostedParties < ActiveRecord::Migration
  def change
    create_table :hosted_parties do |t|
      t.integer :user_id
      t.integer :party_id

      t.timestamps
    end
  end
end
