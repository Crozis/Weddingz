class Service < ActiveRecord::Base
  belongs_to :service_type
  has_many   :services_weddings
  has_many   :weddings, :through => :services_weddings
  
  def pictures_url_array
    self.pictures_url.split(';')
  end
  
end
