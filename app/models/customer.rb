class Customer < ApplicationRecord
    validates :firstname, presence:true 
    validates :phone, numericality:true
    validates :lastname, presence:true
    validates :city, presence:true
    validates :state, presence:true
    validates :zip, presence:true
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
    validates :address1, presence:true
    validates :lastname, presence:true
    validates :rewardpoints, numericality:true
    
    
    
    
    
end
