class Service < ActiveRecord::Base
  belongs_to :service_type
  has_and_belongs_to_many :weddings
  
  def pictures_url_array
    self.pictures_url.split(';')
  end
  
end
