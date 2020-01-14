class Question < ApplicationRecord

  belongs_to :user
  has_many :responses
  attachment :zip_file
  attachment :zip_file, content_type: ["application/zip"]

end
