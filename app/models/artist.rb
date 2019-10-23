class Artist < ApplicationRecord
    has_many :contracts
    has_many :beats, through: :contracts 
    
    validates :name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    
    has_secure_password

end