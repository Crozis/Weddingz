# encoding: utf-8

ActiveAdmin.register Service do
  form do |f|
    f.inputs "Service" do
      f.input :service_type
      f.input :name
      f.input :description
      f.input :phone_number
      f.input :address
      f.input :image_url, :label => 'Images (séparer les urls par une virgule)'.html_safe
    end
    f.buttons
  end
end
