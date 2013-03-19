class AddPrioToProjektParticipant < ActiveRecord::Migration
  def change
    add_column :projekt_participants, :prio1, :boolean, :default => false
    add_column :projekt_participants, :prio2, :boolean, :default => false
    add_column :projekt_participants, :prio3, :boolean, :default => false
  end
end
