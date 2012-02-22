class ServiceType < ActiveRecord::Base
  has_many :services

  has_many :service_types_weddings
  has_many :weddings, :through => :service_types_weddings

  def as_json(option) 
      {
      id:        self.id,
      name:      self.name,
      image_url: self.image_url || '',
      icon_url:  self.icon_url || ''
    }
  end
end
