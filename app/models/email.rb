class Email < ApplicationRecord
    belongs_to :contact
    has_many :email_events, dependent: :destroy
end
