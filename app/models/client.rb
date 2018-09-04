class Client < ApplicationRecord
	has_many :projeks, dependent: :nullify
	
	validates :name, presence: true
end
