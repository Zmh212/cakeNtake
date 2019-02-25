class Reorder < ApplicationRecord
    validates :product_id, presence:true 
    validates :qtyorder, presence:true
    
    
end
