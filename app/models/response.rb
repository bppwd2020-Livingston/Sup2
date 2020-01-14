class Response < ApplicationRecord

  belongs_to :question
  belongs_to :user
  attachment :zip_file
  attachment :zip_file, content_type: ["application/zip"]

end
