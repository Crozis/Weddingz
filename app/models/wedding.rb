# encoding: utf-8
class Wedding < ActiveRecord::Base
  has_many :services_weddings
  has_many :services, :through => :services_weddings
  
  has_one :client, :class_name => "Users::Client"
  has_one :organizer, :class_name => "Users::Organizer"  
  
  has_and_belongs_to_many :service_types
  
  before_create :add_services
  
#   def service_types
#     self.services.map(&:service_type).uniq!
#   end
  
  def services_by service_type
    if service_type.kind_of? Integer
      self.services.reject{|service| service.id != service_type}
    else
      self.services.reject{|service| service.service_type.name.downcase != service_type.downcase}
    end
  end
  
  def as_json(options)
    {
      id:                 self.id,
      budget:             self.budget     || 0,
      place:              self.place      || '',
      nb_person:          self.nb_person  || 0,
      nb_child:           self.nb_child   || 0,

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
      
      service_types:      self.service_types,
      services:           self.services_weddings
    } 
    
  end
  
  private 
  def add_services
    self.service_types.each do |st|
      self.services << Service.where(:service_type_id => st.id)
    end
  end

end