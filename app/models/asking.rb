class Asking < ApplicationRecord
    
    def isNowAnswered
        @asking.answered = 1
    end
    
end
