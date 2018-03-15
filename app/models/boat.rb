class Boat < ApplicationRecord
  belongs_to :user
  has_many :boat_jobs
  has_many :jobs, through: :boat_jobs
  has_one_attached :image

  validates :name, uniqueness: true
  validates_inclusion_of :location, in: ['Sweden', 'USA', 'China', 'Thailand', 'Norway', 'Japan', 'Italy', 'France']
end
