class Projek < ApplicationRecord
  belongs_to :client

  validates :name, presence: true
  validates :staging_url, presence: true
  validates :production_url, presence: true

end
