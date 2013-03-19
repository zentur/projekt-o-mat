class AddHateToProjektParticipants < ActiveRecord::Migration
  def change
    add_column :projekt_participants, :hate, :boolean, :default => :false
  end
end
