class AddRoundToPairings < ActiveRecord::Migration
  def change
    add_column :pairings, :round, :integer
  end
end
