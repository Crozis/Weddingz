class Wedding < ActiveRecord::Base
  has_and_belongs_to_many :services
  has_one :client, :class_name => "Users::Client"
  has_one :organizer, :class_name => "Users::Organizer"
  
  def service_types
    self.services.map(&:service_type)
  end
end