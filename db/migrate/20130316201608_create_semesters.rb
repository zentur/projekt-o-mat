class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
      t.boolean :sommer
      t.boolean :winter
      t.string :year

      t.timestamps
    end
  end
end
