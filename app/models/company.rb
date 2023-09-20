class Company < ApplicationRecord
    belongs_to :user
    has_many :companies, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :liked_companies, through: :likes, source: :company
    has_many :liked_users, through: :likes, source: :user
    has_many :rectures, dependent: :destroy
    
    def already_liked?(company)
        self.likes.exists?(company_id: company.id)
    end
    mount_uploader :image, ImageUploader
end
