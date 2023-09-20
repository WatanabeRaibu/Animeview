class Actor < ApplicationRecord
    has_many :actors, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :liked_actors, through: :likes, source: :actor
    has_many :liked_users, through: :likes, source: :user
    has_many :reviews, dependent: :destroy
    
    def already_liked?(actor)
        self.likes.exists?(actor_id: actor.id)
    end
    mount_uploader :image, ImageUploader
end
