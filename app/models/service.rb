class Service < ActiveRecord::Base
  has_one :service_type
  has_and_belongs_to_many :weddings
end
