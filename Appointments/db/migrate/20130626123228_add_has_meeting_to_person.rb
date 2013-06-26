class AddHasMeetingToPerson < ActiveRecord::Migration
  def change
    add_column :people, :has_meeting, :boolean, :default => false
  end
end
