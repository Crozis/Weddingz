class Wedding < ActiveRecord::Base
  has_and_belongs_to_many :services

  def service_types
    self.services.map(&:service_type)
  end
end