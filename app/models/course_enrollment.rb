class CourseEnrollment < ApplicationRecord
    belongs_to :user
    belongs_to :course

    has_one :progress
    has_one :certificate
end
