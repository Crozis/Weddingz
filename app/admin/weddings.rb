ActiveAdmin.register Wedding do  
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
  show do
          div :class => "panel" do
            h3 "Wedding details"
            div :class => "panel_contents" do
              div :class => "attributes_table wedding" do
              table do
                tbody do  
                  tr do
                    th "ID"
                    td wedding.id
                  end
                  tr do
                    th "Budget"
                    td wedding.budget
                  end
                  tr do
                    th "Place"
                    td wedding.place
                  end
                  tr do
                    th "NB Person"
                    td wedding.nb_person
                  end
                  tr do
                    th "NB Child"
                    td wedding.nb_child
                  end
                  tr do
                    th "ORGANIZER"
                    td wedding.organizer
                  end
                  tr do
                    th "CLIENT"
                    td wedding.client
                  end
                  tr do
                    th "Created at"
                    td wedding.created_at
                  end
                  tr do
                    th "updated at"
                    td wedding.updated_at
                  end
                end
              end
            end
            end
          end
    end
end
