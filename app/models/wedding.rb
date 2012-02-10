class Wedding < ActiveRecord::Base
  has_many :services_weddings
  has_many :services, :through => :services_weddings
  
  has_one :client, :class_name => "Users::Client"
  has_one :organizer, :class_name => "Users::Organizer"
  
  def service_types
    self.services.map(&:service_type).uniq!
  end
  
  def services_by service_type
    if service_type.kind_of? Integer
      self.services.reject{|service| service.id != service_type}
    else
      self.services.reject{|service| service.service_type.name.downcase != service_type.downcase}
    end
  end
  
  def to_json
    {
      id:         self.id,
      name:       self.name,
      budget:     self.budget,
      place:      self.place,
      nb_person:  self.nb_person,
      nb_child:   self.nb_child,
      services:   self.services
    } 
    
  end
end