class Employee < ApplicationRecord
    validates :empname, presence:true 
    validates :position, presence:true
    validates :salary, numericality:true
    
end
