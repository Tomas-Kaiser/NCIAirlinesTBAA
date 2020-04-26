class Skill < ApplicationRecord
    belongs_to :candidate
    
    validates :name, :experience, :typeOfSkill, presence: true
end
