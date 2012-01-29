ActiveAdmin.register User do
  form do |f|
    f.inputs "Mariage" do
      f.input :budget
      f.input :place
      f.input :nb_person
      f.input :nb_child
    end
    f.inputs "Service" do
      f.input :services, :as => :check_boxes
    end
    f.buttons
  end  
end
