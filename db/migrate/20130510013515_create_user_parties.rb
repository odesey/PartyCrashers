class CreateUserParties < ActiveRecord::Migration
  def change
    create_table :user_parties do |t|
      t.integer :user_id
      t.integer :party_id
      t.boolean :host, default: false

      t.timestamps
    end
  end
end
