class Prodingrediant < ApplicationRecord
    validates :productname, presence:true 
    validates :categoryname, presence:true 
    validates :quantity, presence:true 
    
    
end
