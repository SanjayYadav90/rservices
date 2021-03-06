class Service < ApplicationRecord
  has_and_belongs_to_many :cities
  has_many :sub_services, class_name: "Service", foreign_key: "parent_id", dependent: :destroy
  belongs_to :service, class_name: "Service",  foreign_key: "parent_id",optional: true
  has_many   :service_requests
  has_one    :portfolio
  has_many   :time_slots, through: :service_requests, source: :service

  validates :name, presence: {message: 'Service name is required!'}
  validates :name, length: { in: 3..110, message: 'There must be 3 to 110 characters only!' }
  validates :city_ids, presence: {message: 'At leaset 1 city should be selected!'}
  #scope methods
	scope :get_services, -> { where("parent_id IS NULL") }
	
end
