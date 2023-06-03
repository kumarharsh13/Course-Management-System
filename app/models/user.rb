class User < ApplicationRecord
    has_many :course_enrollments
    has_many :course_publishes
    has_many :feedbacks
    has_many :transactions

    validates :email, uniqueness: true
    validates :password_digest, length: { minimum: 8, too_short: "Password is too short" }
    validates :contact, length: { maximum: 10 }

    has_secure_password
end
