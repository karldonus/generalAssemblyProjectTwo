class Inquiry < ActiveRecord::Base
  belongs_to :rental

  validates :first_name, :last_name, :credit_score, :num_pets, :phone, :email, :num_tenants, presence: true
end
