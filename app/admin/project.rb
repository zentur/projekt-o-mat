ActiveAdmin.register Project do 
  form do |f|
    f.inputs "Project Details" do
      f.input :name
      f.input :description
      f.input :professor
      f.input :max_members
      f.input :semester_id, :label => "Semester ID"
    end
    f.buttons
  end

end