class Purchasedetail < ApplicationRecord
    
    validates :purchase_id, presence:true 
    validates :product_id, presence:true
    validates :saleprice, numericality:true 
end
