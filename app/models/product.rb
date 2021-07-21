class Product < ApplicationRecord
  belongs_to :farm
  
  has_many :orders 
  has_many :stalls, through: :orders
  has_many :sales
  has_many :stalls, through: :sales
end
