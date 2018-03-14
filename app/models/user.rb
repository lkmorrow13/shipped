class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :first_name, uniqueness: true
  validates :last_name, uniqueness: true
  validates :email, uniqueness: true
  validates :password, length: {minimum: 7}

  has_many :boats
  has_many :jobs
end
