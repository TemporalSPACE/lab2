class Monster < ApplicationRecord
    validates :name, presence: true, uniqueness: true

    has_many :attacks, dependent: :destroy

    has_many :victims, through: :attacks

    #has_many :tweets

    #def menor_terror
    #    victimi=Attack.where(monster_id: id).pluck :victim_id
    #    fechas=Victim.where(id: victimas).pluck :birthdate
    #    for i in 1..5 do
    #        fechita=fechas[i]
    #        fechadate=fechita.to_datetime
    #        edad=((Date.current - fechadate)/365).to_i
    #        if edad < 18
    #            error(:scare_level, message: "too scary")
    #        end
    #    end
    #end

end

#Attack.where(monster_id: 1).pluck :victim_id
#Victim.where(id: victimas).pluck :birthdate