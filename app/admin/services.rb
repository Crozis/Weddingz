# encoding: utf-8

ActiveAdmin.register Service do

  index do
    column :service_type
    column :name
    column :summary
    column :phone_number
    column :address
    default_actions
  end

  form do |f|
    f.inputs "Service" do
      f.input :service_type
      f.input :name
      f.input :summary
      f.input :description
      f.input :phone_number
      f.input :address
      f.input :front_picture
      f.input :pictures_url, :label => 'Images (séparer les urls par une virgule)'.html_safe
    end
    f.buttons
  end
end
