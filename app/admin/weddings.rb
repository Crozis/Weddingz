# encoding: utf-8
ActiveAdmin.register Wedding do  

  index do
    column :place
    column :budget
    column :nb_person
    column :has_child
    default_actions
  end

  form do |f|
    f.inputs "Informations générales" do
      f.input :budget             , :label => "Budget"
      f.input :place              , :label => "Lieu"
      f.input :nb_person          , :label => "Nombre de personnes"
      f.input :has_child          , :label => "Avec enfant"
    end
    f.inputs "La future mariée" do
      f.input :bride_first_name   , :label => "Prénom de la futur mariée"
      f.input :bride_last_name    , :label => "Nom de la futur mariée"
      f.input :bride_phone_number , :label => "N° de téléphone"
      f.input :bride_email        , :label => "E-mail"
    end
    
    f.inputs "Le futur marié" do
      f.input :groom_first_name   , :label => "Prénom du futur marié"
      f.input :groom_last_name    , :label => "Nom du futur marié"
      f.input :groom_phone_number , :label => "N° de téléphone"
      f.input :groom_email        , :label => "E-mail"
    end
    
    f.inputs "Informations complémentaire" do
      f.input :religion           , :label => "Religion"
      f.input :place_type         , :label => "Type de lieu"
      f.input :desired_atmosphere , :label => "Atmosphère désiré"

      f.input :note               , :label => "Note"
      f.input :bride_photo        , :label => "Photo de la mariée"
      f.input :groom_photo        , :label => "Photo du marié"
      f.input :wedding_photo      , :label => "Photo du mariage"

    end
    f.buttons
  end
  # 
#   show do
#     div :class => "panel" do
#       h3 "Wedding details"
#       div :class => "panel_contents" do
#         div :class => "attributes_table wedding" do
#           table do
#             tbody do  
#               tr do
#                 th "Nom"
#                 td wedding.budget
#               end
#               tr do
#                 th "Budget"
#                 td wedding.budget
#               end
#               tr do
#                 th "Lieu"
#                 td wedding.place
#               end
#               tr do
#                 th "Nombre de personnes"
#                 td wedding.nb_person
#               end
#               tr do
#                 th "Avec enfants"
#                 td wedding.has_child
#               end
#               tr do
#                 th "Organizer"
#                 td wedding.organizer.try(:username)
#               end
#               tr do
#                 th "Client"
#                 td wedding.client.try(:username)
#               end
#             end
#           end
#         end
#       end
#     end
#   end
  
  controller do
    def create
      ids = params[:wedding][:service_type_ids]
      params[:wedding].delete(:service_type_ids)
      @wedding = Wedding.new(params[:wedding])
      
      ServiceType.all.each do |service_type|
        @wedding.service_types_weddings << ServiceTypesWedding.create(:service_type_id => service_type.id, 
                                                                      :wedding_id      => @wedding.id,
                                                                      :activated    => ids.include?(service_type.id.to_s))
      end
      respond_to do |format|
        if @wedding.save
          format.html { redirect_to admin_wedding_path(@wedding), notice: 'Wedding was successfully created.' }
        else
          format.html { redirect_to new_admin_wedding_path }
        end
      end
    end
  end
end
