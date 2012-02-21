class ServicesWedding < ActiveRecord::Base
  validates_presence_of :wedding_id, :service_id

  belongs_to :service
  belongs_to :wedding
  has_one :service_type, :through => :service
  
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
  
  
  def as_json(options)
    {
      id:            self.id,
      activated:     self.activated,
      name:          self.service.name,
      phone_number:  self.service.phone_number,
      address:       self.service.address,
      summary:       self.service.summary,
      type:          self.service.service_type.name,
      description:   self.service.description,
      price:         self.service.price,
      front_picture: self.service.front_picture,
      pictures_url:  self.service.pictures_url.split(';')
    }
  end

end
