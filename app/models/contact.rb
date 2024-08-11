class Contact < ApplicationRecord
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    has_many :emails, dependent: :destroy

    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
    validates :email, uniqueness: true
end