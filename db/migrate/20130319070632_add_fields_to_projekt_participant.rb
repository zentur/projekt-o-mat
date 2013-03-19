class AddFieldsToProjektParticipant < ActiveRecord::Migration
  def change
    add_column :projekt_participants, :user_id, :integer
    add_column :projekt_participants, :project_id, :integer
  end
end
