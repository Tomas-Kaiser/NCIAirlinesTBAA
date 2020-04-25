class Candidate < ApplicationRecord
      has_many :skills, dependent: :destroy
      
      validates :name, :phone, :city, presence: true
end
