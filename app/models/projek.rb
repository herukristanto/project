class Projek < ApplicationRecord
	belong_to :client_id

	validates :name, presence: true
	validates :staging_url, presence: true
	validates :production_url, presence: true
end
