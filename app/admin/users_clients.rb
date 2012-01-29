ActiveAdmin.register Users::Client do
  filter :username
  filter :woman_first_name
  filter :woman_last_name
  filter :man_first_name
  filter :man_last_name
  
  index do
    column :username
    column "Bride", :woman_full_name
    column "Groom", :man_full_name
    default_actions
  end


  form do |f|
    f.inputs "Client" do
      f.input :username
      f.input :password
      f.input :woman_first_name
      f.input :woman_last_name
      f.input :man_first_name
      f.input :man_last_name
    end
    f.inputs "Wedding" do
      f.input :wedding, :collection => Wedding.all.collect{|wedding| "#{wedding.name} - #{wedding.place}" }
    end
    f.buttons
  end 
  show do
    div :class => "panel" do
      h3 "Client details"
      div :class => "panel_contents" do
        div :class => "attributes_table users_client" do
          table do
            tbody do  
              tr do
                th "username"
                td users_client.username
              end
              tr do
                th "Bride"
                td users_client.woman_full_name
              end
              tr do
                th "Groom"
                td users_client.man_full_name
              end
            end
          end
        end
      end
    end
  end
end
