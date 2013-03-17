ActiveAdmin.register Semester do 
  form do |f|
    f.inputs "Semester Details" do
      f.input :sommer, :label => "Sommersemester"
      f.input :winter, :label => "Wintersemester"
      f.input :year
      f.input :active, :label => "Is Active?"
    end
    f.buttons
  end

end
