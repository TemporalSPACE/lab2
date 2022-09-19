class Attack < ApplicationRecord
    belongs_to :monster

    belongs_to :victim  
    
    validate :solo_asustar_mayores

    def solo_asustar_mayores
        if ((monster.scare_level > 5) && ((Date.today.year - victim.birthdate.year) <18))
            errors.add(:birthdate, "Too scary for minors")
        end
    end
end
