class CreatePartyTags < ActiveRecord::Migration
  def change
    create_table :party_tags do |t|
      t.integer :party_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
