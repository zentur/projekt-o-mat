class CreateProjektParticipants < ActiveRecord::Migration
  def change
    create_table :projekt_participants do |t|

      t.timestamps
    end
  end
end
