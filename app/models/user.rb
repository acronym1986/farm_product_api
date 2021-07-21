class User < ApplicationRecord
    has_many :stalls
    has_many :farms
end
