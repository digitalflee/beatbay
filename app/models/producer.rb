class Producer < ApplicationRecord
    has_many :beats
    has_many :contracts, through: :beats 
end
