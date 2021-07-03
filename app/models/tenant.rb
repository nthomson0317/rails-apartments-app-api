class Tenant < ApplicationRecord
    validates :name, presence: true
    validates :age, :numericality =>{ :only_integer => true, :greater_than => 18 }
    has_many :leases
    has_many :apartments, through: :leases


end
