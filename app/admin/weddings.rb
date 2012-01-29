# encoding: utf-8
ActiveAdmin.register Wedding do  

  index do
    column :name
    column :place
    column :budget
    column :nb_person
    column :nb_child
    default_actions
  end


  form do |f|
    f.inputs "Mariage" do
      f.input :name
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
                th "Name"
                td wedding.name
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
                th "Organizer"
                td wedding.organizer.try(:username)
              end
              tr do
                th "Client"
                td wedding.client.try(:username)
              end
            end
          end
        end
      end
    end
  end
end
