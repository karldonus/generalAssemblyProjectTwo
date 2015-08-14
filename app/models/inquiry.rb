class Inquiry < ActiveRecord::Base
  belongs_to :rental

  # AM: YES, VALIDATIONS! Haven't seen nearly enough of these in Project #2. Major kudos.

  validates :first_name, :last_name, :credit_score, :num_pets, :phone, :email, :num_tenants, presence: true
  {message: "Complete all blanks with asterisks!"}
end
