Rental.destroy_all
Inquiry.destroy_all

rivermont_house  = Rental.create(agent: "Ludovic Lemaitre", property_name: "1920s Historic Brick",
address: "2306 Rivermont Ave", city: "Lynchburg", state: "VA", zipcode: 24503,
monthly_rent: "$1100", bed_num: 4, bath_num: 3.5, availability_date: "August 15th",
client_name: "Willy Wonka", client_phone: "434-555-5555",
client_email: "willywonka@candyland.ninja", listing_notes: "Beautiful Hardwoods. Recently Redone Kitchen.",
admin_notes: "Available to show weedays 9 a.m. until 4 p.m. and with appointment."
)

rivermont_house.inquiries.create([
  {first_name: "Karl", last_name: "Sakas",
  credit_score: 773, num_pets: 1, explain_pets: "chocolate lab. 70 pounds.",
  phone: "503-869-1889", num_tenants: 2, relation_tenants: "friends",
  qualification: "fair", inquiry_notes: "I'd like to set up a walk thru this weekend",
  admin_notes: "somewhat questionable character"}])
