class City < ApplicationRecord
  #associations
	has_and_belongs_to_many :services
  has_many :addresses
	
  #scope methods
	scope :details, proc{ |state_id| self.where(:state_id => state_id).order(name: :asc) if state_id.present? }
		
end
