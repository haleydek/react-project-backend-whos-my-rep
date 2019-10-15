class User < ApplicationRecord
    has_many :users_badges
    has_many :badges, through: :users_badges

    validates :email, presence: true
    validates :email, uniqueness: true
    validates :email, format: /@/
    validates :first_name, presence: true
end
