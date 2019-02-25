class Product < ApplicationRecord
    validates :productname, presence:true
    validates :category_id, numericality:true
    validates :saleprice, numericality:true
    validates :status, presence:true 
    validates :purchaseprice, numericality:true 
    
    
    
end
