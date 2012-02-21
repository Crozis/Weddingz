class ServiceType < ActiveRecord::Base
  has_many :services

  has_many :service_types_weddings
  has_many :weddings, :through => :service_types_weddings
end
