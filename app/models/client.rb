class Client < ApplicationRecord
	has_many :projeks
	
	validates :name, presence: true
end
