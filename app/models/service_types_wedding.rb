class ServiceTypesWedding < ActiveRecord::Base
  belongs_to :wedding
  belongs_to :service_type
  
  def as_json(options)
    # Doesn't provide services if the service type is desactivated
    services = []
    if self.activated?
      services = self.wedding.services_weddings.reject{ |services_wedding| services_wedding.service.service_type.id != self.service_type_id}
    end
    
    {
      name:      self.service_type.name,
      image_url: self.service_type.image_url,
      icon_url:  self.service_type.icon_url,
      activated: self.activated,
      services:  services
    }
  end
end
