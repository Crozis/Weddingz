# encoding: utf-8
class Wedding < ActiveRecord::Base
  has_many :services_weddings
  has_many :services, :through => :services_weddings
  
  has_one :client, :class_name => "Users::Client"
  has_one :organizer, :class_name => "Users::Organizer"  
  
  has_many :service_types_weddings
  has_many :service_types, :through => :service_types_weddings

  before_create :add_services
    
  def services_by service_type
    if service_type.kind_of? Integer
      self.services.reject{|service| service.id != service_type}
    else
      self.services.reject{|service| service.service_type.name.downcase != service_type.downcase}
    end
  end
  
  def activated_services_types
    self.service_types_weddings.reject{|service_types_wedding| !service_types_wedding.activated?}
  end

  def disabled_services_types
    self.service_types_weddings.reject{|service_types_wedding| service_types_wedding.activated?}
  end
  
  def activated_services(service_type_id=nil)
     _service_weddings = self.services_weddings.reject{ |service_wedding| !service_wedding.activated? } # Reject all disabled services
     retrieve_service_types(_service_weddings, service_type_id)
  end

  def disabled_services(service_type_id=nil)
     _service_weddings = self.services_weddings.reject{ |service_wedding| service_wedding.activated? } # Reject all disabled services
     retrieve_service_types(_service_weddings, service_type_id)
  end  
  
  def as_json(options)
    {
      id:                 self.id,
      budget:             self.budget     || 0,
      place:              self.place      || '',
      nb_person:          self.nb_person  || 0,
      has_child:          self.has_child  || false,

      bride_first_name:   self.bride_first_name,
      bride_last_name:    self.bride_last_name,
      bride_phone_number: self.bride_phone_number || '',
      bride_email:        self.bride_email        || '',
                       
      groom_first_name:   self.groom_first_name,
      groom_last_name:    self.groom_last_name,
      groom_phone_number: self.groom_phone_number || '',
      groom_email:        self.groom_email        || '',
            
      religion:           self.religion           || '',
      place_type:         self.place_type         || '',
      desired_atmosphere: self.desired_atmosphere || '',
      
      note:               self.note          || '',
      bride_photo:        self.bride_photo   || '',
      groom_photo:        self.groom_photo   || '',
      wedding_photo:      self.wedding_photo || '',
      
      service_types:      self.service_types_weddings
    } 
    
  end
  
  private
  def retrieve_service_types(_service_weddings, _service_type_id)
    if _service_type_id.nil?
      _service_weddings = _service_weddings.collect{ |service_wedding| service_wedding.service } # Collect all the service
    else
      # Reject services with bad service type id
      _service_weddings = _service_weddings.reject{ |service_wedding| service_wedding.service_type.id.to_s != _service_type_id.to_s } 
      _service_weddings = _service_weddings.collect{ |service_wedding| service_wedding.service} # Collect all the service
    end
    _service_weddings  
  end
  
  def add_services
    self.services << Service.all
  end
end