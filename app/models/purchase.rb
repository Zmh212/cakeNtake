class Purchase < ApplicationRecord
    validates :customer_id, presence:true 
    validates :status, presence:true 
end
