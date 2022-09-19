class Victim < ApplicationRecord
    validates :name, presence: true

    has_many:attacks, dependent: :destroy

    #has_many:monster, through:attacks
end
#idk=Monster.find(3).attacks.pluck :victim_id
#Victim.where(id: idk)
#Victim.where(id: idk).order(name: :asc) 