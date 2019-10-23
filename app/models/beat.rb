class Beat < ApplicationRecord
    belongs_to :producer
    has_many :contracts
    has_many :artists, through: :contracts 
    
end
