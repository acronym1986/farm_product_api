class Stall < ApplicationRecord
    belongs_to :user

    has_many :orders
    has_many :products, through: :orders
    has_many :sales
    has_many :products, through: :sales
end
