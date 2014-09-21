class Request < ActiveRecord::Base
  validates :course_id, presence: true, length: { minimum: 8 }
end
