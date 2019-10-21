class User < ApplicationRecord
    has_many :users_badges
    has_many :badges, through: :users_badges

    validates :email, presence: true
    validates :email, uniqueness: true
    validates :email, format: /@/
    validates :first_name, presence: true

    def badge_ids
        self.badges.map do |badge|
            badge.id
        end
    end

    def delete_or_add_badge(badge)
        if self.badges.include?(badge)
            self.badges.delete(badge)
        else
            self.badges << badge
        end
    end
end
