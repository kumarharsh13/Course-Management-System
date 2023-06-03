class CoursePublish < ApplicationRecord
    self.primary_keys = :user_id, :course_id
    
    belongs_to :user
    belongs_to :course
end
