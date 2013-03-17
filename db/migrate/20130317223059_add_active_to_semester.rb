class AddActiveToSemester < ActiveRecord::Migration
  def change
    add_column :semesters, :active, :boolean
  end
end
