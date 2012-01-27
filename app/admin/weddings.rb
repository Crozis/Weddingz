ActiveAdmin.register Wedding do  
  form do |f|
    f.inputs "Mariage" do
      f.input :budget
      f.input :place
      f.input :nb_person
      f.input :nb_child
    end
    f.inputs "Service" do
      f.input :services
    end
    f.buttons
  end
end
