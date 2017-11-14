class Article < ApplicationRecord
  belongs_to :user

  has_attached_file :cover, styles: {medium: "1000x400", thumb: "200x200"}
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
end
