class Service < ActiveRecord::Base
  belongs_to :service_type
  has_many   :services_weddings
  has_many   :weddings, :through => :services_weddings
  
  def pictures_url_array
    self.pictures_url.split(';')
  end
  
  def as_json(options)
    {
      id:            self.id,
      name:          self.name,
      phone_number:  self.phone_number,
      address:       self.address,
      summary:       self.summary,
      type:          self.service_type.name,
      description:   self.description,
      price:         self.price,
      front_picture: self.front_picture,
      pictures_url:  self.pictures_url.split(';')
    }
  end
end
