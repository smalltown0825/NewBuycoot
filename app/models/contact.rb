class Contact < ApplicationRecord
    validates:email, presence: true, length: { maximum: 50 }, format:{ with: /\A([^@\s]+)@((?:[-a-z0-9]+.)+[a-z]{2,})\z/i }
end
