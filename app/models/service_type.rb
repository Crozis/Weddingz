class ServiceType < ActiveRecord::Base
  has_many :services
  has_and_belongs_to_many :weddings
end
