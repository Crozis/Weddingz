class Wedding < ActiveRecord::Base
  has_and_belongs_to_many :services
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
end