class ServicesWedding < ActiveRecord::Base
  validates_presence_of :wedding_id, :service_id

  belongs_to :service
  belongs_to :wedding
  
  def self.activated_services(wedding_id, service_type_id) 
    services = where(:wedding_id => wedding_id, :activated => true)
    services.collect!{|service_wedding| service_wedding.service}
    services.reject{|service| service.service_type.id != service_type_id.to_i}
  end

  def self.disabled_services(wedding_id, service_type_id) 
    services = where(:wedding_id => wedding_id, :activated => false)
    services.collect!{|service_wedding| service_wedding.service}
    services.reject{|service| service.service_type.id != service_type_id.to_i}
  end
  
end
