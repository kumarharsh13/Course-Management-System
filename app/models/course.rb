class Course < ApplicationRecord
    validates :cname, uniqueness: true

    has_many :course_enrollments, dependent: :delete_all
    has_many :course_publishes, dependent: :delete_all
    has_many :transactions
    has_many :feedbacks, dependent: :delete_all
    has_many :syllabuses, dependent: :delete_all
end
