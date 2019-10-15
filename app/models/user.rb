class User < ApplicationRecord
    has_many :users_badges
    has_many :badges, through: :users_badges
end
