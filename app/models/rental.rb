class Rental < ActiveRecord::Base
  has_many :inquiries
end
