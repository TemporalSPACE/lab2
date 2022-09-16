class Victim < ApplicationRecord
    validates :name, presence: true

    belongs_to :attacks, dependent: :destroy
end
#idk=Monster.find(3).attacks.pluck :victim_id
#Victim.where(id: idk)
#Victim.where(id: idk).order(name: :asc) 