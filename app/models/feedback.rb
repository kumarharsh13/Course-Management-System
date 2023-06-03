class Feedback < ApplicationRecord
    belongs_to :user
    belongs_to :course

    validates :review, length: { maximum: 500, too_long: "Word limit only upto 500 characters" }
end
