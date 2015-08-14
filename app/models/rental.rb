class Rental < ActiveRecord::Base
  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#"}

  # AM: Woah, this validation is awesome.

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  has_many :inquiries

  # AM: Would like you to walk me throw this below bit of code during our 1:1!

  attr_accessor :delete_image
  before_validation { image.clear if delete_image == '1'}

end
