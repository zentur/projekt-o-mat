class AddMembersToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :max_members, :integer
  	add_column :projects, :professor, :string
  end
end
