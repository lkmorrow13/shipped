class Job < ApplicationRecord
  belongs_to :user
  has_many :boat_jobs
  has_many :boats, through: :boat_jobs

  validates :name, uniqueness: true
  validates :cost, length: {minimum: 4}
  validates :description, length: {minimum: 50}
  validates_inclusion_of :origin, in: ['Sweden', 'USA', 'China', 'Thailand', 'Norway', 'Japan', 'Italy', 'France']
  validates_inclusion_of :origin, in: ['Sweden', 'USA', 'China', 'Thailand', 'Norway', 'Japan', 'Italy', 'France']
end
